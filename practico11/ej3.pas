program ej3;

const	MAX = 4; {valor mayor estricto a 0}
		CENTINELA = '.';
	    VOCALES = ['a','e','i','o','u'];


type
	Cadena = record
				letras : array [1..MAX] of char;
				tope : 0..MAX; {largo}
			end;

var cadenaPrueba: Cadena;

procedure cargarCadena(var cad : Cadena);
var entrada: char;
begin
	read(entrada);
	repeat    
		cad.tope := cad.tope + 1;
		cad.letras[cad.tope] := entrada;
		read(entrada);        
 	until (cad.tope >= MAX) or (entrada = CENTINELA);
end;


function contarOcurrencias(frase: Cadena; letra:char): integer;
var i,ocurrencias:integer;
begin
	ocurrencias:=0;
	for i:=1 to frase.tope do
		if(letra=frase.letras[i]) then ocurrencias+=1;
	
	contarOcurrencias:=ocurrencias;
end;

function existeVocal(cad: Cadena): boolean;
var i:integer;
begin
	i:=1;
	while (i<=cad.tope) and not(cad.letras[i] in VOCALES) do i+=1;
	existeVocal:=i<=cad.tope;
end;


begin
cadenaPrueba.letras[1]:='b';
cadenaPrueba.letras[2]:='b';
cadenaPrueba.letras[3]:='a';
cadenaPrueba.letras[4]:='b';
cadenaPrueba.tope:=4;

writeln(existeVocal(cadenaPrueba))
end.
