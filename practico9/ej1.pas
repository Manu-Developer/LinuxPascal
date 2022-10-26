program ej1;
const N =  5; {valor mayor estricto a 1}
var arreglo: array [1..N] of integer;
	i, menor, indice: integer;
	
begin
	
	arreglo[1]:=2;
	arreglo[2]:=4;
	arreglo[3]:=-6;
	arreglo[4]:=-8;
	arreglo[5]:=-10;
	
	indice := N;
	for i := N-1 downto 1 do
		if arreglo[i] <= arreglo[indice] then
		indice := i;

	writeln(indice);
	writeln('hola bro');

end.
