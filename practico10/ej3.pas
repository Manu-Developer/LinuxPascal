program Ejercicio3;
type Asignatura = (matematica, historia, computacion, geografia, fisica);
var a, b: Asignatura;
begin
	a := matematica;
	b := computacion;
	if a > b then
	write ('Magnifico')
	else
	write ('Excelente')
end.
