var colors = [];
var size;
var grow;

var osc;
var notas = [];
var notas2 = [];

function setup() {
	createCanvas(window.innerWidth, window.innerHeight);
	frameRate(1000);
	//createCanvas(800, 600);
	colors[0] = color(33,43,64);
	colors[1] = color(0,195,169);
	colors[2] = color(255,255,255);
	colors[3] = color(186,220,221);
	colors[4] = color(84,123,151);

	size = 0;
	grow = true;

	osc = new p5.Oscillator();
	osc.setType('sine');
	osc.freq(100);
	osc.amp(0.2);
	osc.start();

	notas = [130.81,155.56,174.61,185.00,196.00,233.08,261.63];
	notas2 =[261.63,311.13, 349.23,369.99,392.00,466.16,523.25];

	//delay = new p5.Delay();
	//delay.process(osc, .12, .7, 2300);
}

/*Esta funcion se remite alrededor de los 30fps*/
function draw() {
	fill(255,3);
	rect(0,0,width,height);

	//background(255);
	if(mouseIsPressed){
		fill(colors[parseInt(random(colors.length))]);
	}else{
		fill(255);
	}

	if(size==100){grow=false;}
	if(size==0){grow=true;}

	if(grow){ size++; }
	else size--;

	var espaciado= width/notas.length;
	var pos1 = 0;
	var pos2 = 0;
	for (i = 0; i < notas.length; i++) { 
		pos1 = i*espaciado;
		pos2 = (i+1)*espaciado;

		if(mouseX>pos1 && mouseX<pos2){
			if(mouseIsPressed){
				osc.freq(notas2[i]);
			}else{
				osc.freq(notas[i]);
			}
			
			break;
		}
	}

	var pos = map(mouseY,0,height,1,0);
	osc.amp(pos);

	

	

	ellipse(mouseX,mouseY,size,size);
}