//Written by Luke Storry
//Matrices Project
//This program will become a procedures in the final program:
    //to input and check orders of matrixes.

program InputMatrix;

uses
  crt;

type
  TMatrix = record
    name            : String;
    columns , rows  : Integer;
    mat             : array[1..50,1..50] of Real;
  end; //of TMatrix defininition

var
 A  : TMatrix;



procedure InputMatrix(var X : TMatrix);   //parameters are the two matrixes from the main program.

          var i , j : integer;

          begin//procedure
                Writeln('We will now enter matrix ' , X.name , '.');
                for j := 1 to X.columns do   //each loop will readon one row of the matrix
                    begin
                      Writeln('Please enter ' , X.columns , ' values as column ' , j , '  of  the ' , X.name , ' matrix.');
                      for i := 1 to X.rows do  Readln(X.Mat[i,j]); //each loop enters one value/row
                      Writeln;
                    end; //of column loop
          end; //input procedure




procedure OutputMatrix(var X : TMatrix);   //parameters are the two matrices from the main program.

          var i , j : integer;

          begin//procedure
                Writeln('This is matrix ' , X.name , ':');

                for i := 1 to X.rows do   //each repeat will output one row of the matrix
                    begin
                        for j := 1 to X.columns do Write(X.Mat[i,j]:5:1); //each repeat will output a single cell/column
                        Writeln;
                    end; //of row loop


                Writeln();


          end; // output procedure





//*******MAIN PROGRAM STARTS HERE********
begin
  Writeln('Input a Matrix.');
  Writeln('Written by Luke Storry.'); Writeln;

  A.name    := 'A';
  A.rows    := 3;        //another procedure would usually enter these values
  A.columns := 3;        //but for this program, they are defined here

  InputMatrix(A);
  OutputMatrix(A);
  Readln;

end.// of main program

