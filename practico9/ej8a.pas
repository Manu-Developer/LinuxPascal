program ej8a;

const N = 5;
type	Digito = '0'..'9';
		Digitos = array [1..N] of Digito;
		
var arreglo : Digitos;

	
procedure leerArreglo(VAR a:Digitos);
var	digitoChar: Digito;
	i:integer;

begin
	for i:=1 to N do 
	begin 
		readln(digitoChar);
		a[i]:=digitoChar;
    end    
end;

function conversion(ary: Digitos):integer;
var i,numeroFinal: integer;
begin
	for i:=1 to N do
		write(ord(ary[i])-ord('0'));
end;
	
begin
	 leerArreglo(arreglo);
	 conversion(arreglo)
end.
