program ej4a;
const M = 2;
const N = 2;
type tabla = array [1..M, 1..N] of integer;

var TipoMatriz : tabla;
	i:1..M;
	j:1..N;


procedure cargarMatriz(matriz:tabla);
	
begin
for i:=1 to M do
	for j:=1 to N do
		readln(TipoMatriz[i,j]);
end;

procedure intercambiarFilas(var arrayMatriz: tabla; n,m:integer );
    var aux, i: integer;
    begin 
        for i := 1 to N do begin 
            aux:= arrayMatriz[n,i];
            arrayMatriz[n,i]:= arrayMatriz[m,i];
            arrayMatriz[m,i] := aux
        end 
    end;	
	
begin
	cargarMatriz(TipoMatriz);
	writeln('La matriz es');
	writeln(TipoMatriz[1,1]);
	writeln(TipoMatriz[1,2]);
	writeln(TipoMatriz[2,1]);
	writeln(TipoMatriz[2,2]);
	intercambiarFilas(TipoMatriz,1,2);
	writeln('La nueva matriz es');
	writeln(TipoMatriz[1,1]);
	writeln(TipoMatriz[1,2]);
	writeln(TipoMatriz[2,1]);
	writeln(TipoMatriz[2,2]);
	

end.
