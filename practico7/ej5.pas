program ej5;
var num1,num2,num3 : integer;

procedure corrimiento(a,b,c : integer);
var auxiliar1,auxiliar2,auxiliar3 : integer;
begin
	auxiliar1:=a;
	auxiliar2:=b;
	auxiliar3:=c;

	a:=auxiliar3;
	b:=auxiliar1;
	c:=auxiliar2;
	
	writeln(a,b,c)
end;


{ Programa principal }
begin
	writeln('Ingrese tres numeros: ');
	read(num1,num2,num3);
	
	corrimiento(num1,num2,num3);
end.
