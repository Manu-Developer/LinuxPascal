procedure darUnPaso(var x, y: integer; vx, vy: integer);
begin
	{Para actualizar los valores de x e y, los cuales representan la posicion actual de la pelota, procedo a sumar las velocidades vx y vy correspondientes}
	x+=vx;
	y+=vy;
end;

function estanChocando(x1, y1, x2, y2: integer): boolean;
{Declaro una variable auxiliar llamada resultadoFinal para retornar al final de la funcion el resultado obtenido}
{Declaro distanciaEuclidiana que sera el valor final de la formula a utilizar para corroborar si estan chocando o no}
var	resultadoFinal: boolean;
	distanciaEuclidiana: real;
begin
	{Declaro la formula matematica de la distancia euclidiana}
	distanciaEuclidiana:=sqrt(sqr(x2-x1)+sqr(y2-y1));
	{Evaluo si la distancia euclidiana es menor a la suma de los radios de las pelotas}
	if(distanciaEuclidiana < RADIO + RADIO) then
		resultadoFinal:=true
	else
		resultadoFinal:=false;
	
	{Retorno el valor final de la funcion a partir de la variable resultadoFinal}
	estanChocando:=resultadoFinal;
end;

function esPosicionValida(x1, y1: integer): boolean;
{Declaro una variable auxiliar llamada comprobacionDeLaPosicion para retornar al final de la funcion el resultado obtenido}
var comprobacionDeLaPosicion: boolean;
begin
	{Compruebo si la pelota se encuentra dentro de los margenes de la pantalla}
	if((x1>=RADIO) AND (x1<=ANCHO - RADIO) AND (y1>=RADIO) AND (y1<=ALTO - RADIO)) then
		comprobacionDeLaPosicion:=true
	else
		comprobacionDeLaPosicion:=false;

	{Retorno el valor final de la funcion a partir de la variable comprobacionDeLaPosicion}
	esPosicionValida:=comprobacionDeLaPosicion;
end;

function predecirColision(x1,y1,vx1,vy1,x2,y2,vx2,vy2: integer): integer;
{Declaro una variable auxiliar llamada contadorDeMovimientos para retornar al final de la funcion el resultado obtenido}
var contadorDeMovimientos: integer;	
begin
	{Inicializo contadorDeMovimientos en 0}
	contadorDeMovimientos:=0;
	{Voy moviendo la pelota, compruebo si la posicion actual de la pelota es valida y sumo +1 al contador de movimientos para saber en cuantos movimientos las pelotas colisionaran}
	repeat
		darUnPaso(x1,y1,vx1,vy1);
		darUnPaso(x2,y2,vx2,vy2);
		contadorDeMovimientos+=1;
	until(estanChocando(x1,y1,x2,y2) or not esPosicionValida(x1,y1) or not esPosicionValida(x2,y2));

	{Cuando se salga del ciclo repeat, procederemos a evaluar si las posiciones de las pelotas no son validas. En ese caso predecirColision retornara -1 y en el caso contrario predecirColision retornara el valor de la variable contadorDeMovimientos}
	if (not esPosicionValida(x1,y1) or not esPosicionValida(x2,y2)) then
		predecirColision:=-1
	else
		predecirColision:=contadorDeMovimientos;
end;
