float[] temphigh={57,60,62,63,64,66,67,68,70,69,63,57,64};
float[] templow={46,48,49,49,51,53,54,55,55,54,50,46,51};
int cw=500;
int cy=500;
int xpad=20;
void setup(){
  size(500, 500);
}
int ypad=40;
void draw(){
  line(xpad+40,cy-ypad,xpad+40,ypad);  //ycoord
  line(xpad+40,cy-ypad,cw-(xpad+40),cw-ypad);  //ycoord
  
  strokeWeight(4);
  numy(0,100,10);
}
void numy(float x, float y, float num){
  for(int i=0; i<num+1;i+=1){
    stroke(0);
    fill(0);
    text((int)((y-x)/num*i+x), xpad+10, cy-(cy-ypad)/(num+1)*i-ypad); 
  }
}
