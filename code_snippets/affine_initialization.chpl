config const n = 10;
proc test(){
 var A:[1..n] real;
 for i in 1..n{
  A(i) = i;
 }
}
test();
