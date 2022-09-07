{ program P6E4;
var entrada, i ,j, cantidadDeDivisores : integer;
begin 
    write('Ingrese n: ');
    read(entrada);
    for i := 1 to entrada do begin 
        cantidadDeDivisores := 0;
        j := i;
        while (cantidadDeDivisores <= 2) and (j >= 1) do begin 
            if (i mod j = 0) then
              cantidadDeDivisores := cantidadDeDivisores + 1; 
            j := j - 1;
        end; 
        if (cantidadDeDivisores <= 2) then 
            Write(' ', sqrt(i) :2:2)
    end
end.
}

program P6E4;
var numero, i: integer;
	isPrime: boolean;
begin
	isPrime:= true;
	write('Digita el numero: ');
	readln(numero);
	
	for i:=1 to numero do
		begin
			if (numero mod i = 0) or (i mod numero = 0) then isPrime:=false;
			if(isPrime) then writeln(i,': ',' raiz:', sqrt(i))
		end;
	
end.
