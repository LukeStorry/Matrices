//Written by Luke Storry
//Part of the Matrices Project

program MatrixMultiplier;
uses crt;
type TMatrix = record
    name            : String;
    columns , rows  : Integer;
    mat             : array[1..50,1..50] of Real;
  end; //of TMatrix defininition
const  decimalPlaces = 0; //for the output
var  A , B , C : TMatrix;     //A*B=C are specific ones user-inputted matrices, X*Y=Z are generic.

procedure InputOrders(var A , B : TMatrix);   //parameters are the two matrixes from the main program.
          var ordersOKforMult : Boolean;    //declares local variables
          begin //procedure
                Repeat
                     Write('Please enter how many rows your first matrix has:   ');
                     Readln (  A.rows );
                     Write('Please enter how many columns your first matrix has:   ');
                     Readln ( A.columns );
                     Write('Please enter how many rows your second matrix has:   ');
                     Readln (  B.rows );
                     Write('Please enter how many columns your second matrix has:   ');
                     Readln ( B.columns );
                         if A.columns = B.rows  //checks to see if the orders are compatible for multiplication
                            then ordersOKforMult := True
                            else
                                begin
                                    ordersOKforMult := False;
                                    Writeln; Writeln; Writeln;
                                    Writeln('Those matrixes cannot be multiplied.');
                                    Writeln;
                                    Writeln('Please try again...');
                                    Writeln; Writeln; Writeln; Delay(1000);
                                end; //of else statement
                until ordersOKforMult; // end of repeat
                Writeln;
                Writeln('The matrices of orders ' , A.rows , 'x' , A.columns , ' and ' , B.rows , 'x' , B.columns , ' are compatible for multiplication.');
          end;

procedure InputMatrix(var X : TMatrix);   //parameter is a matrix from the main program.
          var i , j : integer;
          begin//procedure
              for j := 1 to X.columns do   //each loop will read one column of the matrix
                    begin
                      Writeln('Please enter ' , X.rows , ' values as column ' , j , ' of the ' , X.name , ' matrix.');
                      for i := 1 to X.rows do  Readln(X.Mat[i,j]); //each loop enters one value/row
                      Writeln;
                    end; //of column loop
          end; //input procedure

procedure MultiplyMatrices(var X , Y , Z : TMatrix);   //parameters are two matrices from the main program, and an output X*Y=Z.
          var i , j , k : integer;  //local counter variables
          begin//procedure
                 Z.rows := X.rows;        //sets up the size of the product matrix
                 Z.columns := Y.columns;
                 for i := 1 to Z.rows do   // in each row
                   begin;//row loop
                           for j := 1 to Z.columns do   //  for each column/cell
                                begin
                                      Z.mat[i,j] := 0;    //initialise the output matrix as 0
                                      for k := 1 to X.columns do
                                          Z.mat[i,j] += X.mat[i,k]*Y.mat[k,j];    // then add A[i,k]*B[k,j] for all k to that cells value
                                end; //ends column/cell loop and moves onto next cell
                   end;//row loop
          end; //or multiplication procedure

procedure OutputMatrix(var X : TMatrix);   //parameter is a matrix from the main program.
          var i , j : integer;
          begin//procedure
                Writeln('This is the ' , X.name , ' matrix:');
                for i := 1 to X.rows do   //each repeat will output one row of the matrix
                    begin
                        for j := 1 to X.columns do
                            Write(X.Mat[i,j]:5:decimalPlaces , '  ,'); //each repeat will output a single cell/column
                        Writeln;
                    end; //of row loop

                Writeln();
          end; // output procedure

//*******MAIN PROGRAM STARTS HERE********
begin
  Writeln('Matrix Multiplier.');
  Writeln('Written by Luke Storry.'); Writeln;
  A.name:='first' ;
  B.name:='second';
  C.name:='product';
  InputOrders(A,B);Writeln;Writeln;Writeln;
  InputMatrix(A);  Writeln;Writeln;
  InputMatrix(B);
  MultiplyMatrices(A,B,C);
  OutputMatrix(A);
  OutputMatrix(B);
  OutputMatrix(C);
  Readln;
end.// of main program
