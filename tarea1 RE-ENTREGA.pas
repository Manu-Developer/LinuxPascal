procedure darUnPaso(var x, y: integer; vx, vy: integer);
begin
	{Para actualizar los valores de x e y, los cuales representan la posicion actual de la pelota, procedo a sumar las velocidades vx y vy correspondientes}
	x+=vx;
	y+=vy;
end;

function estanChocando(x1, y1, x2, y2: integer): boolean;
{Declaro distanciaEuclidiana que sera el valor final de la formula a utilizar para corroborar si estan chocando o no}
var	distanciaEuclidiana: real;
begin
	{Declaro la formula matematica de la distancia euclidiana}
	distanciaEuclidiana:=sqrt(sqr(x2-x1)+sqr(y2-y1));

	{Evaluo si la distancia euclidiana es menor a la suma de los radios de las pelotas y retorno el valor de la expresion booleana}
	estanChocando:=distanciaEuclidiana < RADIO + RADIO;
end;

function esPosicionValida(x1, y1: integer): boolean;
begin
	{Compruebo si la pelota se encuentra dentro de los margenes de la pantalla y retorno el valor de la expresion booleana}
	esPosicionValida:=(x1>=RADIO) AND (x1<=ANCHO - RADIO) AND (y1>=RADIO) AND (y1<=ALTO - RADIO);
end;

function predecirColision(x1,y1,vx1,vy1,x2,y2,vx2,vy2: integer): integer;
{Declaro una variable auxiliar llamada contadorDeMovimientos para retornar al final de la funcion el resultado obtenido}
var contadorDeMovimientos: integer;	
begin
	{Inicializo contadorDeMovimientos en 0}
	contadorDeMovimientos:=0;
	
	{Voy moviendo la pelota, compruebo si la posicion actual de la pelota es valida y sumo +1 al contador de movimientos para saber en cuantos movimientos las pelotas colisionaran}
	while(NOT estanChocando(x1,y1,x2,y2) and esPosicionValida(x1,y1) and esPosicionValida(x2,y2)) do
	begin
		darUnPaso(x1,y1,vx1,vy1);
		darUnPaso(x2,y2,vx2,vy2);
		contadorDeMovimientos+=1;
	end;

	{Cuando se salga del ciclo, procederemos a evaluar si las posiciones de las pelotas no son validas. En ese caso predecirColision retornara -1 y en el caso contrario predecirColision retornara el valor de la variable contadorDeMovimientos}
	if (not esPosicionValida(x1,y1) or not esPosicionValida(x2,y2)) then
		predecirColision:=-1
	else
		predecirColision:=contadorDeMovimientos;
end;
