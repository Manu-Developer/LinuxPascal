program ej9;
const CENTINELA = -1;
var numero1, numero2: integer;

function multiplo(num1,num2:integer): boolean;
begin
	multiplo:=(num1 mod num2 = 0) or (num2 mod num1 = 0);
end;

begin
	repeat
		writeLn('Ingresar numero1 y numero2');
		read(numero1);
		read(numero2);
		
		if (multiplo(numero1,numero2)) then
			writeln('SI')
		else
			writeln('NO');

	until (numero1 = CENTINELA)   
end.
