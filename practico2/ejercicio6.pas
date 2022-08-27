
program sumadorDeTiempos;

var 
	horario1,horario2,horariosumado,dias,horas,minutos: integer;
begin

write('Ingrese dos horarios (hhmm hhmm): ');
read(horario1,horario2);

horariosumado:=horario1+horario2;
horas:=horariosumado div 100;
minutos:=horariosumado mod 100;

{ejemplo 1240=> 1240/100 = 12.40 => DIV: 12 y MOD: 40}

dias:=horas div 24;
horas:=horas-(dias * 24);

if minutos>=60 then
begin
	horas:=horas+1;
	minutos:=minutos-60;
end;

writeln('La suma de las dos horas es: ', dias:3, ' ', horas:2, ' ', minutos:2);
end.
