/* a matrix calculator
 * Written by Luke Storry
 * https://github.com/LukeStorry/Matrices/
 *
 *
 * matrices stored in a linked list
 */

#include <stdio.h>
#include <stdlib.h> 

//define a new type to store the matrices in.
typedef struct matrix{
    char name;
    float ** arr;
    struct matrix *next;
}matrix;

//define function to input matrix
matrix inputMatrix (void) {
         
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

