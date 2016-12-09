class Apples {
 int appleX = round(random(1,10));
 int appleY = round(random(1,10));
 
 void apple() {
  fill(255,0,0);
  rect(appleX * gbs, appleY * gbs, gbs, gbs);
 }
}