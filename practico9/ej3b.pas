program ej3b;
const N = 5;
type CadenaN = array [1..N] of integer;
var arrayDeNumeros : CadenaN;
	
function ordenado(cadn:CadenaN) : boolean;
	var i:integer;
	begin
	i:=0;
		while(i+1<=N) AND (cadn[i] < cadn[i+1]) do
			i:=i+1;
		ordenado:=i=N;
	end;
		
begin
	arrayDeNumeros[1]:=13;
	arrayDeNumeros[2]:=2;
	arrayDeNumeros[3]:=3;
	arrayDeNumeros[4]:=4;
	arrayDeNumeros[5]:=5;
	
	writeln(ordenado(arrayDeNumeros))
end.
