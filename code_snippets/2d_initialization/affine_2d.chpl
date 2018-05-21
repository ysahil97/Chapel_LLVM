config const n = 10;

var A:[1..n,1..n] real;

proc test(){
 for i in 1..n{
  for j in 1..n{
   A(i,j) = i*4+j+6;
  }
 }
}
test();
