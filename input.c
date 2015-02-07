/* this is the inputs file of 
 * a matrix calculator
 * Written by Luke Storry
 * https://github.com/LukeStorry/Matrices/
 *
 *
 * 26 matrices stored in a linked list, named a-z
 */

#include <stdio.h>
#include <stdlib.h> 

//a new type to store the matrices in.
typedef struct matrix{
    char name;
    float ** arr;
    struct matrix *next;
}matrix;



//adds values into matrix
void inputMatrixValues(matrix *ptr, int size) {
    int i, j, baseX = 3, baseY = 15;
    char[5] numStr;
    for (i=0 ; i < size ; i++) {
        for (j=0 ; i < size ; i++) {
            printf("\033[(baseX+i*3);(baseY+j)H");
            scanf("%5f",numStr);// fgetsinput?
        }
    }
}



//main function to input matrix
matrix inputMatrix (void) {
    char name = checkName();
    int  size = checkSize();


    }
}


//function to return matrix from just the "name"
matrix *findMatrix(char name, matrix *listStart) {
    matrix ptr = listStart;
    while (ptr->name != name && ptr != NULL) { //end-of-list error-check?
	ptr = ptr->next;
    };
    return ptr;
};

int main (void) {
    matrix *listStart;
    
    
    return 0;
}

