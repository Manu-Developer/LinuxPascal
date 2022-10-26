program ej9;
type 
	Estudiante = record
					nombre, direccion :
					array[1..30] of char;
					prueba, examen : 0..100;
					tipoest : (grado, posgrado)
				end;

	Evaluacion = record
					prueba : 0..100;
					nota : 0..12;
					orden : 1..100
				end;
				
	{El resto de declaraciones son invalidas}
begin

end.
