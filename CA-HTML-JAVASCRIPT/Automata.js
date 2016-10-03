document.getElementById("button").innerHTML ='<button id="set" class="btn btn-success" onclick="javascript:setParameters()">Set</button>';
document.getElementById("button").innerHTML += '<button id="play" class="btn btn-primary"  onclick="javascript:play()">&#9658;</button>';
document.getElementById("button").innerHTML += '<button id="pause" class="btn btn-warning" onclick="javascript:pause()" disabled>&#10074;&#10074;</button>';
document.getElementById("button").innerHTML += '<button id="stop" class="btn btn-danger" onclick="javascript:stop()" disabled>&#9607;</button>';

var ctx = document.getElementById("barras");
var z = document.getElementById("zone");
z.style.background = 'white';
z.width = 500;
z.height = 500;

var CA = null;
var DIMENSION;
var TOTALCELLS;
var TOTALDURATION;
var TOTALREPLICAS;
var NAME;
var F;
var V;

var NAME_EXPERIMENTS = ["Cr20rpm", "Cr40rpm", "Fe20rpm", "Fe40rpm", "Ni20rpm", "Ni40rpm", "Zn20rpm", "Zn40rpm"];

document.getElementById("play").disabled = true;
document.getElementById("pause").disabled = true;
function setParameters(){

    DIMENSION = parseInt(document.getElementById("dimension").value);
    TOTALCELLS = parseInt(document.getElementById("cells").value);
    TOTALDURATION = parseInt(document.getElementById("duration").value);
    TOTALREPLICAS = parseInt(document.getElementById("replicas").value);
    NAME = document.getElementById("experiment").value;
    F = parseFloat(document.getElementById("f").value);
    V = parseFloat(document.getElementById("v").value);

    CA = new Automaton(TOTALCELLS, DIMENSION);
    drawHistogram();
    dibujaAutomata();
    document.getElementById("set").disabled = true;
    document.getElementById("play").disabled = false;
}

function dibujaAutomata(){
    if (CA.dim == 2) {
        var c = z.getContext("2d");
        c.clearRect(0, 0, z.width, z.height);
        //c.fillStyle = "white";
        /*
        var r = 50 + Math.floor(Math.random() * 200);
        var g = 50 + Math.floor(Math.random() * 200);
        var b = 50 + Math.floor(Math.random() * 200);
        c.fillStyle = "rgb(" + r + ", " + g + "," + b + ")";
        */
        var space = z.width / CA.T; //Espacio que hay entre circ
        var rad = space / 2; // Maximo radio que puede haber
        for (var l = 0; l < CA.N; l++){
            var coord = int2list(l, CA.dim, CA.T);
            var x = rad + coord[0] * space;
            var y = rad + coord[1] * space;
            var r = CA.cells[l].h / rad;
            if (r > 0) {
               r += 3;
            }
            //document.getElementById("debug").innerHTML += "Dibujando " + l + ", " + x + ", " + y + ", " + CA.cells[l].h + "<br>";
            if (r > rad){
                var dif = r - rad;
                r = rad;
                c.beginPath();
                c.arc(x, y, r, 0, Math.PI * 2, true);
                c.fill();
                c.strokeStyle = 'red';
                c.stroke();
            }else{
                c.beginPath();
                c.arc(x, y, r, 0, Math.PI * 2, true);
                c.fill();
            }

        }
    }

}

function normalize (freq){
    var s = Math.max(freq);
    var temp = freq;
    for (var i = 0; i < freq.length; i++){
        temp[i] = freq[i]/s;
    }
    return temp;
}

function acumulate(freq){
    var temp = freq;
    for (var i = 0; i < freq.length; i++){
        if (i != 0){
            temp[i] += temp[i-1];
        }
    }
    return temp;
}

function update_maximum(current){
    if (current > MAXIMUM){
        MAXIMUM = current;
    }
}

function list2int(list_, base, s){
    var r = 0;
    var power = Math.pow(s, base - 1);
    for (var k = 0; k < list_.length; k++){
        r += list_[k] * power;
        power /= s;
    }
    return r;
}

function int2list(number, base, s){
    var r = [];
    var power = Math.pow(s, base - 1);
    while (power > 0){
        var m = Math.floor(number / power);
        number -= m * power;
        r.push(m);
        power /= s;
    }
    return r;
}

function Cell (l) {
    this.label = l;
    this.h = Math.floor((Math.random() * 10) + 0);
    update_maximum(this.h);
    this.neighbors = [];
    this.excess = 0;

    this.set_neighborhood = function(neighbors){
        this.neighbors = neighbors;
    };
    this.transfer = function(recipient){
        if (this.excess > 0){
            recipient.receive(this.excess);
            this.h -= this.excess;
            this.excess = 0;
        }
    };
    this.merge = function(recipient){
        recipient.receive(this.h);
        this.h = 0;
        this.excess = 0;
    };
    this.receive = function(quantity){
        this.h += quantity;
        update_maximum(this.h);
    };
    this.prepare = function(hP){
        this.excess = this.h - hP;
    };

    this.update = function(f, v){
        //var antes = this.h;
        var above = true;
        var nonzero = true;
        for (var i = 0, len = this.neighbors.length; i < len; i++) {
            if (this.neighbors[i].excess < 0){

                above = false;
            }
            if (this.neighbors[i].h == 0){
                nonzero = false;
            }
            if (!above && !nonzero){
                break;
            }
        }
        if (Math.random() < 1.0 - v){
            return;
        }
        if (above && Math.random() < v){
            for (var i = 0, len = this.neighbors.length; i < len; i++) {
                this.neighbors[i].transfer(this);
            }
            return;
        }
        if (nonzero && Math.random() < f * (1.0 - v)){
            for (var i = 0, len = this.neighbors.length; i < len; i++) {
                this.neighbors[i].merge(this);
            }
            return;
        }
        if (this.excess > 0 && Math.random() < 1.0 - f * (1.0 - v)){
            var quantity = Math.floor(this.excess * Math.random());
            this.h -= quantity;
            var n = Math.floor(Math.random() * this.neighbors.length);
            var randomNeighbor = this.neighbors[n];
            randomNeighbor.receive(quantity);
            this.excess = 0;
            return;
        }
        /*
        var despues = this.h;
        if (antes != despues) {
           //document.getElementById("debug").innerHTML += "Cambio " + (despues - antes) + "<br>";
        } else {
           //document.getElementById("debug").innerHTML += "-";
        }*/
    };
}

function Automaton(total, dim){
    this.cells = {};
    this.initialCells = [];
    this.T = Math.ceil( Math.pow(total,1.0 / dim));
    this.N = Math.pow(this.T, dim);
    this.M = 0;
    this.dim = dim;
    for (var ncells = 0; ncells < this.N; ncells++){
        var c = new Cell(ncells);
        this.cells[ncells] = c;
        this.initialCells.push(c.h);
        this.M += c.h;
    }
    this.hP = this.M / this.N;
    this.f  = 0;
    this.v = 0;
    for (var c = 0; c < this.N; c++){
        var neighbors = [];
        var coord = int2list(c, dim, this.T);
        for (var pos = 0; pos < dim; pos++){
            if (coord[pos] < this.T - 1){
                coord[pos] += 1;
                var label = list2int(coord, dim, this.T);
                neighbors.push(this.cells[label]);
                coord[pos] -= 1;
            }
            if (coord[pos] > 0){
                coord[pos] -= 1;
                var label = list2int(coord, dim, this.T);
                neighbors.push(this.cells[label]);
                coord[pos] += 1;
            }
        }
        this.cells[c].set_neighborhood(neighbors);
    }
    this.hist = {};
    this.error = {};

    this.returnInitialCells = function(){
        for (var ncells = 0; ncells < this.N; ncells++){
                this.cells[ncells].h = this.initialCells[ncells];
                this.cells[ncells].excess = 0;
        }
    };

    this.resetCellsH = function(){
        for (var ncells = 0; ncells < this.N; ncells++){
                this.cells[ncells].h = Math.floor((Math.random() * 10) + 0);
        }
    };

    this.nextReplica = function() {
        MAXIMUM = 0;
        // this.temp_hist = [];
        // this.temp_error = [];
        //error_sim = this.error_exp_sim()[0];
        //temp_hist.push(this.histogram());
        //temp_error.push(error_sim);
        // this.hist[comb] = temp_hist;
        // this.error[comb] = temp_error;
        this.replicas--;
        this.stepRemaining = TOTALDURATION;
    };
    /*
    this.nextComb = function(){
        MAXIMUM = 0;
        this.f = FV[0][0];
        this.v = FV[0][1];
        FV.shift();
        this.comb = 'f-' + Math.floor(this.f/SIZEINTERVAL)+'-v-'+Math.floor(this.v/SIZEINTERVAL);
        this.replicas = TOTALREPLICAS;
        this.stepRemaining = TOTALDURATION;
    };*/

    this.nextExp = function(){
        MAXIMUM = 0;
        this.experiment = NAME;
        this.replicas = TOTALREPLICAS;
        this.stepRemaining = TOTALDURATION;
        this.f = F;
        this.v = V;
        this.comb = 'f-' + String(this.f)+'--v-'+String(this.v);
        this.YEXP = EXPERIMENTS[this.experiment][1];
    };

    this.nextExp(); //Asignar los valores iniciales de la simulacion

    this.histogram = function(){
        var maximum = -1;
        for (var coord = 0; coord < this.N; coord++){
            if(this.cells[coord].h > total){
                maximum = this.cells[coord].h;
            }
        }
        var delta = 5;
        var max_bins = Math.floor(maximum / delta) + 1;
        var bins = [];
        var frequency = [];
        for (var b = 0; b < max_bins; b++){
          frequency.push(0);
          bins.push(delta*(b + 1));
        }

        for (var coord = 0; coord < this.N; coord++){
          frequency[Math.floor(this.cells[coord].h / delta)] += 1;
        }

        return [bins, frequency];
    };

    this.error_exp_sim = function (){

        var y_sim = this.histogram()[1];
        var y_exp = this.YEXP;

        var error_c = 0.0;
        var v_sim = 0.0;
        var v_exp = 0.0;
        var max_e = max(y_exp);
        var max_s = max(y_sim);

        for (i in xrange(max(y_exp.length, y_sim.length))){
            try{
              v_exp = y_exp[i] / max_e;
            }catch(err){
              v_exp = 0;
            }

            try{
              v_sim = y_sim[i] / max_s;
            }catch(err){
              v_sim = 0;
            }

            error_c += Math.pow(v_exp - v_sim, 2);
        }
        return error_c;
    };

}

var running = false;

function play() {
  document.getElementById("pause").disabled = false;
  document.getElementById("play").disabled = true;
  document.getElementById("set").disabled = true;
  running = true;
  begin();
}

function pause() {
  document.getElementById("pause").disabled = true;
  document.getElementById("play").disabled = false;
  drawHistogram();
  running = false;
}

var waitMiliseconds = 100;
window.again = (function(callback) {
  return window.requestAnimationFrame ||
         window.webkitRequestAnimationFrame ||
         window.mozRequestAnimationFrame ||
         window.oRequestAnimationFrame || window.msRequestAnimationFrame ||
         function(callback) {
            window.setTimeout(callback, waitMiliseconds);
        };
      })();

function simulationStep(){
        check = 0;
        for (var coord = 0; coord < CA.N; coord++){
            CA.cells[coord].prepare(CA.hP);
            check += CA.cells[coord].h;
        }
        for (var coord = 0; coord < CA.N; coord++){
            CA.cells[coord].update(CA.v, CA.f);
        }
        // CA.hist[comb] = CA.histogram();
        // CA.error[comb] = CA.error_exp_sim()[0];
        document.getElementById("notices").innerHTML = "Exp: " + CA.experiment + ", " +CA.comb + ', Replica: ' + CA.replicas + ", Step: " + CA.stepRemaining;
        dibujaAutomata();
        drawHistogram();
        CA.stepRemaining--;
        if (CA.stepRemaining > 0){
            if (running){
            again(function() {
                simulationStep();
             });
            }
        } else {
            drawHistogram();
            //si hay mas replicas
            if (CA.replicas > 1){
                CA.nextReplica();
                CA.returnInitialCells();
                simulationStep();
            }
        }
    };

var MAXIMUM = 0;
var YEXP = [];



function begin() {
  dibujaAutomata();
  simulationStep();
}

function drawHistogram1(){
    var xy = CA.histogram();
    var data = {
        labels: xy[0],
        datasets: [
            {
                label: "Simulated Data",
                fillColor: "rgba(220,220,220,0.5)",
                strokeColor: "rgba(220,220,220,0.8)",
                highlightFill: "rgba(220,220,220,0.75)",
                highlightStroke: "rgba(220,220,220,1)",
                data: xy[1]
            },
            {
                label: "Experimental Data",
                fillColor: "rgba(151,187,205,0.5)",
                strokeColor: "rgba(151,187,205,0.8)",
                highlightFill: "rgba(151,187,205,0.75)",
                highlightStroke: "rgba(151,187,205,1)",
                data: EXPERIMENTS[CA.experiment][1]
            }
        ]
    };

    var newChart = new Chart(ctx.getContext("2d")).Bar(data, {
    //responsive : true //Hacer un resize
    });;
}


function drawHistogram(){
    var xy = CA.histogram();

    var bins = [];
    var simData = xy[1];
    var expData = EXPERIMENTS[CA.experiment][1];
    var max_exp = Math.max.apply(null, expData);
    var max_sim = Math.max.apply(null, simData);
    var maximum = 0;
    var minimun = 0;

    if (simData.length >= expData.length){
        bins = xy[0];
        maximum = simData.length;
        for (var i = 0 ; i < maximum; i++){
            bins[i] = Math.log(bins[i] + 1);
        }
    }else{
        bins = EXPERIMENTS[CA.experiment][0];
        maximum = expData.length;
        for (var i = 0 ; i < maximum; i++){
            bins[i] = Math.log(bins[i] + 1);
        }
    }
    //document.getElementById("debug").innerHTML += "simdata " + simData.length + "<br>";
    //document.getElementById("debug").innerHTML += "expdata " + expData.length + "<br>";
    /*
    for (var i = 0; i < maximum; i++){
        try {
            expData[i] = expData[i] / max_exp;
        }catch(err){
        }finally{
        }
        try {
            simData[i] = simData[i] / max_sim;
        }catch(err){
        }finally{
        }
    }*/
    if (CA.stepRemaining == TOTALDURATION){//Solamente al principio del experimento se debe hacer este paso
      for (var i = 0; i < expData.length; i++){
          expData[i] = Math.log(expData[i] / max_exp + 1);
      }
    }
    for (var i = 0; i < simData.length; i++){
        simData[i] = Math.log(simData[i] / max_sim + 1);
    }
    var data = {
        //allowDecimals: true,
        labels: bins,
        datasets: [
            {
                label: "Simulated Data",
                fillColor: "rgb(0, 51, 204,0.5)",
                strokeColor: "rgb(0, 51, 204, 0.7)",
                highlightFill: "rgba(0, 51, 204,0.75)",
                highlightStroke: "rgba(0, 51, 204,1)",
                data: simData
            },
            {
                label: "Experimental Data",
                fillColor: "rgba(178, 34, 34,0.5)",
                strokeColor: "rgb(178, 34, 34, 0.7)",
                highlightFill: "rgba(178, 34, 34,0.75)",
                highlightStroke: "rgba(178, 34, 34,1)",
                data: expData
            }
        ]
    };

    var newChart = new Chart(ctx.getContext("2d")).Bar(data, {
    animation: false,
    responsive : true, //Hacer un resize
    //showTooltips: false
    });;
}
