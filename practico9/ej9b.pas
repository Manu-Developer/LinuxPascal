program ej9;

const N = 3;
type 
	MatrizSimetrica = array [1..N, 1..N] of integer;
	MatrizUnidimensional = array [1..100] of integer;
var matrizUno: MatrizSimetrica;
	mUnidimensional: MatrizUnidimensional;


procedure matriz2arreglo(mSimetrica: MatrizSimetrica; var mUnidimensional : MatrizUnidimensional);
var i,j,indiceUni : integer;
begin
	indiceUni:=1;

	for i:=1 to N do
		for j:=1 to N do
			if j >= i then
			begin
				mUnidimensional[indiceUni] := mSimetrica[i,j];
				indiceUni+=1;
			end;	
end;

begin
	matrizUno[1,1]:=10;
	matrizUno[1,2]:=13;
	matrizUno[1,3]:=30;
	matrizUno[2,1]:=6;
	matrizUno[2,2]:=34;
	matrizUno[2,3]:=87;
	matrizUno[3,1]:=31;
	matrizUno[3,2]:=98;
	matrizUno[3,3]:=1;
	
	matriz2arreglo(matrizUno, mUnidimensional);
	writeln(mUnidimensional[1]);
	writeln(mUnidimensional[2]);
	writeln(mUnidimensional[3]);
	writeln(mUnidimensional[4]);
	writeln(mUnidimensional[5]);
	writeln(mUnidimensional[6]);
end.
