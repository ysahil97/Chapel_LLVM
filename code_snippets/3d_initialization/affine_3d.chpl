config const n = 10;

var A:[1..n,1..n,1..n] real;

proc test(){
 for i in 1..n{
  for j in 1..n{
    for k in 1..n{
      A(i,j,k) = i+j+k;
    }
  }
 }
}
test();

