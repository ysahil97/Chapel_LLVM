module matrix_multiplication {


	proc init_matrix(A:[0..999,0..999] real, B:[0..999,0..999] real, C:[0..999,0..999] real){
		for i in 0..999{
			for j in 0..999{
				A(i,j) = i+j;
			}
		}

		for i in 0..999{
			for j in 0..999{
				B(i,j) = i+j*5;
			}
		}

		for i in 0..999{
			for j in 0..999{
				C(i,j) = 0;
			}
		}
	}

	proc m2m(A:[0..999,0..999] real, B:[0..999,0..999] real, C:[0..999,0..999] real){
		for i in 0..999{
			for j in 0..999{
				for k in 0..999{
					C(i,j) = C(i,j) +A(i,k)*B(k,j);
				}
			}
		}
	}

	proc main(){
		var A:[0..999,0..999] real;
	        var B:[0..999,0..999] real;
       		var C:[0..999,0..999] real;

		init_matrix(A,B,C);
		m2m(A,B,C);
	}
}
