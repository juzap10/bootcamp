var bubbles = [];

function setup() {
	createCanvas(window.innerWidth, window.innerHeight);
	//frameRate(1000);
}

/*Esta funcion se remite alrededor de los 30fps*/
function draw() {
	background(0);

	var i;
	for(i=0;i<bubbles.length;i++){
		bubbles[i].move();
		bubbles[i].display();
	}


}


function mousePressed(){
	bubbles.push(new Bubble(mouseX,mouseY));
}


function Bubble(x,y){
	this.x = x;
	this.minusX = false;

	this.y = y;
	this.minusY = false;

	this.r = random(10,20);
	this.speedX = random(-3,3);
	this.speedY = random(-3,3);


	this.display = function(){

		fill(255);
		ellipse(this.x,this.y,this.r*2,this.r*2);		
	}

	this.move = function(){

		if(this.x > width || this.x < 0){
			this.speedX *= -1;
		}

		if(this.y > height || this.y < 0){
			this.speedY *= -1;
		}
	
		this.x = this.x+this.speedX;
		this.y = this.y+this.speedY;
	}
}