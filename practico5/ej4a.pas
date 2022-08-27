program ej4a;
var numero,suma,acumuladorDeVueltas: integer;
begin
	suma:=0;
	acumuladorDeVueltas:=0;
	readln(numero);
	
	while numero > 0 do
	begin
		suma:=suma+numero;
		acumuladorDeVueltas:=acumuladorDeVueltas+1;
		readln(numero);
	end;
			
	writeln(suma div acumuladorDeVueltas);
end.
