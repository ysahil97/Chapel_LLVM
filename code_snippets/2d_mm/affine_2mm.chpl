config const n = 10;

var A:[1..n,1..n] real;
var B:[1..n,1..n] real;
var C:[1..n,1..n] real;


proc init_matrix(){
 for i in 1..n{
  for j in 1..n{
   A(i,j) = i+j;
  }
 }

 for i in 1..n{
  for j in 1..n{
   B(i,j) = i+j*5;
  }
 }

 for i in 1..n{
  for j in 1..n{
   C(i,j) = 0;
  }
 }
}

proc m2m(){

 init_matrix();

 for i in 1..n{
  for j in 1..n{
   for k in 1..n{
     C(i,j) = C(i,j) +A(i,j)*B(i,j);
   }
  }
 }

}
m2m();
