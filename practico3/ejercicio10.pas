program calcularCorreo;
var peso, costo: real;

begin

write('Digita el peso del paquete: ');
readln(peso);

if (peso>0) and (peso<=1) then
	begin
		costo:=77;
		writeln('El peso es de: ', peso:0:2, ' y su costo de transporte es de: ', costo:0:2);
	end
else if (peso>=1) then
	begin
		if (peso=trunc(peso)) then
			costo:= 77 + (56*trunc(peso-1))
		else
			costo:= 77 + (56*trunc(peso));
			writeln('El peso es de: ', peso:0:2, ' y su costo de transporte es de: ', costo:0:2);
	end
else
	writeln('El peso no puede ser negativo!!');


end.
