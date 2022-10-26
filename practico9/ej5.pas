program p9Ejer5;

const
	M = 5; 
	N = 10; 

type
	CadenaM = array [1..M] of char;
	CadenaN = array [1..N] of char;

var
	i : integer;
	cadnM : CadenaM;
	cadnN : CadenaN;

function indiceSubCadena(cadnM:CadenaM; cadnN:CadenaN) : integer;

var i,j,k,indice : integer;
	coincide : boolean;
begin
	
	coincide := false;
	indice := 1;

	for i:= 1 to N do
	begin		
		j := i;
		k := 1;
		while (cadnN[j] = cadnM[k]) and (k <= M) and (not coincide) do
		begin
			if k = M then
				coincide := true;
			j := j + 1;
			k := k + 1;			
		end;
		if not coincide then
			indice:=i;
	end;

	if coincide then
		indiceSubCadena := indice
	else
		indiceSubCadena := 0;

end;

procedure leerCadenaM(var cadnM: CadenaM);

var i : integer;

begin
	write('Ingrese un texto de ', M, ' caracteres: ');
	for i:=1 to M do
		read(cadnM[i]);		
end;

procedure leerCadenaN(var cadnN: CadenaN);

var i : integer;

begin
	write('Ingrese un texto de ', N, ' caracteres: ');
	for i:=1 to N do
		read(cadnN[i]);		
end;

procedure saltoLineas(cantidadLineas : integer);

var i : integer;

begin
	for i:=1 to cantidadLineas do
		writeln
end;

begin
	
	cadnM[1] := 'h';
	cadnM[2] := 'o';
	cadnM[3] := 'l';
	cadnM[4] := 'a';
	cadnM[5] := '!';

	cadnN[1] := 'a';
	cadnN[2] := 'a';
	cadnN[3] := 'a';
	cadnN[4] := 'a';
	cadnN[5] := 'a';
	cadnN[6] := 'a';
	cadnN[7] := 'a';
	cadnN[8] := 'h';
	cadnN[9] := 'o';
	cadnN[10] := 'l';
	
	saltoLineas(2);	

	writeln('Arreglo cadnM: ');
	for i := 1 to M do
		write(cadnM[i]);

	saltoLineas(2);	

	writeln('Arreglo cadnN: ');
	for i := 1 to N do
		write(cadnN[i]);

	saltoLineas(2);	
	
	writeln('*****************************************');
	writeln('Coincidencia de array M en N desde el indice: ', indiceSubCadena(cadnM,cadnN));		
	writeln('*****************************************');

	
	saltoLineas(2);	

	leerCadenaM(cadnM);

	saltoLineas(2);	

	writeln('*****************************************************');
	write('Arreglo cadnM despues de el procedimiento leerCadenaM: ');
	for i := 1 to M do
		write(cadnM[i]);
	writeln;
	writeln('*****************************************************');

	saltoLineas(2);	

	leerCadenaN(cadnN);
	
	writeln('*****************************************************');
	write('Arreglo cadnN despues de el procedimiento leerCadenaN: ');
	for i := 1 to N do
		write(cadnN[i]);
	writeln;
	writeln('*****************************************************');

	saltoLineas(2);	

	writeln('*****************************************');
	writeln('Coincidencia de array M en N desde el indice: ', indiceSubCadena(cadnM,cadnN));		
	writeln('*****************************************');

	saltoLineas(2);
end.
