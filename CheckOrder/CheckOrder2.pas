//Written by Luke Storry
//Matrices Project
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

                Writeln('The matrices of orders ' , A.rows , 'x' , A.columns , ' and ' , B.rows , 'x' , B.columns , ' are compatible for multiplication.');
          end;


//***MAIN PROGRAM STARTS HERE****
begin
  Writeln('Matrix Order Check.');
  Writeln('Written by Luke Storry.'); Writeln;
  InputOrders(A,B);
  Readln;
end.
