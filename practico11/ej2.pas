program ej2;
const	MAXPERSONAS = 5; {valor entero mayor estricto a 0}
		MAXCAD = 5; {valor entero mayor estricto a 0}
type
	Cadena = record
				letras : array [1..MAXCAD] of char;
				largo : 0..MAXCAD;
			end;
	Fecha = record
				dia : 1..31;
				mes : 1..12;
				anio : 0..maxint;
			end;
	Persona = record
				nombre : Cadena;
				fechNac : Fecha;
				indMadre, indPadre : 0..MAXPERSONAS;
			end;
	Familia = record
				pers : array[1..MAXPERSONAS] of Persona;
				tope : 0..MAXPERSONAS;
			end;

var cadPrueba1, cadPrueba2: Cadena;
			
function cadenasIguales (cad1, cad2 : Cadena): Boolean;
var i:1..MAXCAD;
	sonIguales:boolean;
begin
	sonIguales:=false;
	if (cad1.largo = cad2.largo) then
	begin
		i:=1;
		while(i<=cad1.largo) and (cad1.letras[i]=cad2.letras[i]) do i:=i+1;
		sonIguales:=(i>cad1.largo);
	end;
	cadenasIguales:=sonIguales;
end;

procedure desplegarCadena (cad: Cadena);
var i:integer;
begin
	for i:=1 to MAXCAD do write(cad.letras[i]);
	WriteLn;
end;


procedure antepasados (usted : Cadena; historia : Familia);
function indiceDeLaPersonaBuscada (nombre:Cadena; fam:Familia): integer;
var i:integer;
begin
	i:=1;
	while (i<=fam.tope) and (not cadenasIguales(nombre, fam.pers[i].nombre)) do begin
		i := i + 1;
	end;
	if(i>fam.tope) then 
		indiceDeLaPersonaBuscada := -1
	else 
		indiceDeLaPersonaBuscada := i
end;

var indice:integer;
begin
	indice := indiceDeLaPersonaBuscada(usted,historia);
	if (indice <> -1) then begin 
		Write('Fecha de nacimiento de ');
		desplegarCadena(usted);
		desplegarCadena(historia.pers[indice].nombre);
		with historia.pers[historia.pers[indice].IndMadre].FechNac do begin
			Write(dia,'/',mes,'/',anio)
		end
	{Falta lo del padre, pero es lo mismo}
	end
end;



begin
	cadPrueba1.letras[1]:='a';
	cadPrueba1.letras[2]:='b';
	cadPrueba1.letras[3]:='c';
	cadPrueba1.letras[4]:='d';
	cadPrueba1.letras[5]:='e';
	cadPrueba1.largo:=5;

	cadPrueba2.letras[1]:='a';
	cadPrueba2.letras[2]:='b';
	cadPrueba2.letras[3]:='c';
	cadPrueba2.letras[4]:='d';
	cadPrueba2.letras[5]:='e';
	cadPrueba2.largo:=5;

	desplegarCadena(cadPrueba2);
	writeln(cadenasIguales(cadPrueba1,cadPrueba2))
end.
