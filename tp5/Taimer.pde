class Tempo{

void tim(){

  int s= second();
  int m= minute();
 
  
  String t= nf (m=0,2)+ ':'+ nf (s=0,2)+ '.';
textSize(30);
fill(255);
text(t, 423, 30);
fill(0);
text(t, 420, 30);
}
  
}
