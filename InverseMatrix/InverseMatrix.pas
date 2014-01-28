//Written by Luke Storry
//Matrices Project

program InverseMatrix;

uses
  crt;

type
  TMatrix = record
    name            : String;
    columns , rows  : Integer;
    mat             : array[1..50,1..50] of Real;
  end; //of TMatrix defininition

var
 input , inverse : TMatrix;



procedure InputMatrix(input:TMatrix);
          var i , j : integer;

          begin//procedure
                repeat
                write('How many rows does the matrix have?  ');
                readln(input.rows);
                write('How many columns does the matrix have?  ');
                readln(input.columns);
                if not (input.rows = input.rows)
                     then writeln('that isn''t square, please try again.');
                writeln;
                until input.rows = input.rows; //checks if square

                writeln('You will now imput the matrix.');
                for j := 1 to input.columns do   //each loop will readon one row of the matrix
                    begin
                      Writeln('Please enter ' , input.columns , ' values as column ' , j , '  of  the matrix.');
                      for i := 1 to input.rows do  Readln(input.Mat[i,j]); //each loop enters one value/row
                      Writeln;
                    end; //of column loop
          end; //input procedure

procedure SetUpInverse(inverse);
          var i,j : Integer;
          begin //procedure
             inverse.rows:=input.rows;
             inverse.columns:=input.columns;
             for i:=1 to inverse.columns do
             begin
                for j:=1 to inverse.rows do
                begin
                   if i=j
                      then inverse.mat[i,j]:=1;
                      else inverse.mat[i,j]:=0;
                end; //rows loop
             end;   //columns loop
          end; //procedure


procedure FindInverse(input:TMatrix; var inverse:TMatrix);
          var i , j : integer;
          begin //procedure


          end; //procedure




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
  Writeln('Matrix Inverser.');
  Writeln('Written by Luke Storry.'); Writeln;

  InputMatrix(input);
  SetUpInverse(inverse);
  FindInverse(input,inverse)
  OutputMatrix(inverse);
  Readln;

end.// of main program
