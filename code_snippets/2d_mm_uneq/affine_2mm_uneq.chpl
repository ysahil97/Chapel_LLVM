config const n = 5;
config const m = 10;
config const l = 4;
var A:[1..n,1..m] real;
var B:[1..m,1..l] real;
var C:[1..n,1..l] real;


proc init_matrix(){
 for i in 1..n{
  for j in 1..m{
   A(i,j) = i+j;
  }
 }

 for i in 1..m{
  for j in 1..l{
   B(i,j) = i+j*5;
  }
 }

 for i in 1..n{
  for j in 1..l{
   C(i,j) = 0;
  }
 }
}

proc m2m(){
 for i in 1..n{
  for j in 1..l{
   for k in 1..m{
     C(i,j) = C(i,j) +A(i,k)*B(k,j);
   }
  }
 }
}

init_matrix();
m2m();
