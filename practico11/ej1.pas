program ej1;
const	CANT_PERS = 100 ;{valor entero mayor estricto a 0}
		MAX_CADENA = 5 ;{valor entero mayor estricto a 0}
type
	Cadena = record
				letras : array [1..MAX_CADENA] of char;
				largo : 0..MAX_CADENA;
			end;
	Persona = record
				nombre : Cadena;
				edad : 0..120;
				estado : (casado, soltero, divorciado);
				salario : Real;
				exenciones : 0..maxint;
			end;

var	juanita : Persona;
	grupo : array [1..CANT_PERS] of Persona;
begin
	with juanita do
	begin
		nombre := grupo[50].nombre;
		salario := grupo[1].salario;
	end
end.
