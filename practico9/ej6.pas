program ej6;

const N = 2;
type Matriz = array [1..N, 1..N] of integer;
var matrizUno: Matriz;
	
procedure trasponerMatriz(var matrizCuadrada : Matriz; largoMatriz : integer);

var i,j,aux : integer;

begin
	for i:=1 to largoMatriz do
		for j:=1 to largoMatriz do
			if j > i then
			begin
				aux := matrizCuadrada[i,j];
				matrizCuadrada[i,j] := matrizCuadrada[j,i];
				matrizCuadrada[j,i] := aux 		
			end;
			
	writeln(matrizCuadrada[1,1]);
	writeln(matrizCuadrada[1,2]);
	writeln(matrizCuadrada[2,1]);
	writeln(matrizCuadrada[1,2]);
end;

	
begin
	matrizUno[1,1]:=15;
	matrizUno[1,2]:=12;
	matrizUno[2,1]:=31;
	matrizUno[2,2]:=4;
	
	writeln('Matriz Normal');
	writeln(matrizUno[1,1]);
	writeln(matrizUno[1,2]);
	writeln(matrizUno[2,1]);
	writeln(matrizUno[1,2]);
	
	writeln('Matriz Transpuesta');
	trasponerMatriz(matrizUno, 2);
end.
