{Escriba el procedimiento llamado maxValorPos que, dado un arreglo de enteros, devuelve el valor m´as
grande y el primer ´ındice en que ´este ocurre.
procedure maxValorPos(cadn:CadenaN; VAR valor, pos:integer);}


program ej3c;
const N = 5;
type CadenaN = array [1..N] of integer;
var arrayDeNumeros : CadenaN;
	
procedure maxValorPos(cadn:CadenaN);
var i,mayorValor:integer;
begin
	mayorValor:=0;
	for i:=1 to N do
		if(cadn[i]>mayorValor) then mayorValor:=cadn[i];
	
	writeln(mayorValor);
		
end;
	
begin
	arrayDeNumeros[1]:=13;
	arrayDeNumeros[2]:=2;
	arrayDeNumeros[3]:=33;
	arrayDeNumeros[4]:=4;
	arrayDeNumeros[5]:=5;
	
	maxValorPos(arrayDeNumeros)
	
	
end.
