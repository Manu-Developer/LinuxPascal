program raicesCuadradas;

var a,b,c,descriminante,formulaUno,formulaDos: real;

begin

write('Ingrese coeficientes de la ecuacion: ');
read(a,b,c);
descriminante:=sqr(b)-4*a*c;

if(descriminante>=0) then
	begin
		formulaUno:=(-b+(sqrt(sqr(b)-4*a*c)))/(2*a);
		formulaDos:=(-b-(sqrt(sqr(b)-4*a*c)))/(2*a);
		
		if(formulaUno<>formulaDos) then
			writeln('Dos raices reales diferentes: ', formulaUno:4:2 , ' y ', formulaDos:4:2)
		else
			writeln('Dos raices reales iguales: ', formulaUno:4:2)

	end
else
	begin	
		descriminante:=abs(descriminante);
		writeln('Dos raices complejas diferentes: ', -b:0:2,' + raiz cuadrada de: ' ,abs(sqr(b)-4*a*c):0:2, ' i/ ',2*a:0:2, ' y ', -b:0:2,' - ', ' raiz cuadrada de: ',abs(sqr(b)-4*a*c):0:2, ' i/ ',2*a:0:2); 
	end;
end.
