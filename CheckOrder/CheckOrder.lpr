//Written by Luke Storry
//Project name: Matrices
//This program will become a procedures in the final program:
    //to input and check orders of matrixes.

program CheckOrder;

uses
  crt;

type
  TMatrix = record
    columns , rows  : Integer;
    mat             : array[0..50,0..50] of Real;
  end; //of TMatrix defininition

var
 A , B    : TMatrix;



procedure InputOrders(var A , B : TMatrix);   //parameters are the two matrixes from the main program.

          var ordersOKforMult : Boolean;    //declares local variables
                            i : Integer // Char;
                   //MATRIX ARRAY HERE

          begin //procedure

                 Repeat //until matrices are compatible

                     for  i := 1 to matrixArray.length do
                          begin
                             Write('Please enter how many rows matrix ' , i , ' has:   ');
                             Readln ( i.rows )'
                             Write('Please enter how many columns matrix ' , i , ' has:   ');
                             Readln ( i.columns )'
                           end; //assignment loop


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

                Writeln('The matrices of order ' , A.rows , 'x' , A.columns , ' and ' , B.rows , 'x' , B.columns , ' are compatible for multiplication.');
          end;












//***MAIN PROGRAM STARTS HERE****
begin
  Writeln('Matrix Order Check.');
  Writeln('Written by Luke Storry.'); Writeln;
  InputOrders(A,B);
  Readln;
end.

