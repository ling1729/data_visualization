float[] temphigh={57,60,62,63,64,66,67,68,70,69,63,57};
float[] templow={46,48,49,49,51,53,54,55,55,54,50,46};
int cw=500;
int cy=500;
int xpad=20;
int dpad=20;
int upad=20;
int maxx=12;
int maxy=100;
int minx=1;
int miny=0;
void setup(){
  size(500, 500);
}

int ypad=40;
int startx=xpad+40;
int starty=cy-ypad-dpad;
int endx=cw-(xpad+40);
int endy=ypad-dpad+upad;
void graph(){
  noFill();
  beginShape();
  strokeWeight(2);
  for(int i=0;i<temphigh.length;i++){
    stroke(255, 0, 0);
    noFill();
    vertex(startx+(endx-startx)/12*i,starty-(starty-endy)/(maxy-miny)*temphigh[i]);
    circle(startx+(endx-startx)/12*i, starty-(starty-endy)/(maxy-miny)*temphigh[i], 5);
  }
  endShape();
  noFill();
  beginShape();
  strokeWeight(2);
  for(int i=0;i<templow.length;i++){
    stroke(0, 0, 255);
    noFill();
    vertex(startx+(endx-startx)/12*i,starty-(starty-endy)/(maxy-miny)*templow[i]);
    circle(startx+(endx-startx)/12*i, starty-(starty-endy)/(maxy-miny)*templow[i], 5);
  }
  endShape();
  //vertex();
}
void draw(){
  background(230);
  strokeWeight(3);
  stroke(0,0,0);
  line(startx,starty,startx,endy);  //ycoord
  line(startx,starty,endx,starty);  //xcoord
  
  strokeWeight(2);
  numy(miny,maxy,10);
  numx(minx,maxx,12);
  graph();
}
void numy(float x, float y, float num){
  for(int i=0; i<num;i+=1){
    stroke(0);
    fill(0);
    text((int)((y-x)/num*i+x), startx-30, (endy-starty)/num*i+starty); 
  }
}
void numx(float x, float y, float num){
  for(int i=1; i<num+1;i+=1){
    stroke(0);
    fill(0);
    text((int)((y-x)/num*i+x), (endx-startx)/num*(i-1)+startx, (starty+30));
  }
}
