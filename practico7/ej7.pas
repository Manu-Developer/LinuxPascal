program ej7;
var p1x,p1y,p2x,p2y,resultadoFinal: real;

function distancia(x1,y1,x2,y2: real): real;
	var lado1,lado2,hipotenusa: real;
	
begin
	lado1:=x2-x1;
	lado2:=y2-y1;
	hipotenusa:=sqrt(sqr(lado1)+sqr(lado2));
	
	distancia:=hipotenusa;
end;

begin
	write('Ingrese las coordenadas del primer punto: ');
	readln(p1x,p1y);
	write('Ingrese las coordenadas del segundo punto: ');
	readln(p2x,p2y);
	resultadoFinal:=distancia(p1x,p1y,p2x,p2y);
	writeln('La distancia entre los puntos es: ',resultadoFinal:0:2);
end.
