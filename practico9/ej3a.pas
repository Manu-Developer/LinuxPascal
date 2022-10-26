program ej3a;
const N = 5;
type CadenaN = array [1..N] of integer;
var arrayDeNumeros : CadenaN;
	
function cantMayores(cadn:CadenaN; num:integer) : integer;
	var i, cantidadDeMayores: integer;
	begin
		cantidadDeMayores:=0;
		for i:=1 to N do
			if(cadn[i] > num) then cantidadDeMayores+=1;
		
		cantMayores:=cantidadDeMayores;
	end;
		
begin
	arrayDeNumeros[1]:=11;
	arrayDeNumeros[2]:=51;
	arrayDeNumeros[3]:=13;
	arrayDeNumeros[4]:=12;
	arrayDeNumeros[5]:=1;
	
	writeln(cantMayores(arrayDeNumeros, 50))
end.
