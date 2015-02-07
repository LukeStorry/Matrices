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
    int size;
    float **arr;
    struct matrix *next;
}Matrix;



//adds values into matrix
void inputMatrixValues(float *ptr, int size) {
    int i, j, baseX = 3, baseY = 15;
    for (i=0 ; i < size ; i++) {
        for (j=0 ; i < size ; i++) {
            printf("\033[(baseX+i*2);(baseY+j)H ");//move cursor position
            *(ptr+i*size+j) = checkFloat();
        }
    }
}

//traverses a linked list and inputs matrix in the right place
void putInLL(Matrix *matrix, Matrix *testNode) {
    while ((testNode.next != NULL) && (matrix->name > testNode->name)) {
        testNode = testNode->next;
    };
    Matrix *nextNode = testNode->next;
    testNode->next    = matrix;
    matrix->next      = nextNode;
}

//main function to input matrix
void inputMatrix (Matrix * root) {
    Matrix matrix;
    matrix.name = checkName();
    matrix.size = checkSize();
    matrix.arr  = malloc(size * size * sizeof(float));
    inputMatrixValues(&(matrix->arr));
    putInLL(matrix,root);
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

