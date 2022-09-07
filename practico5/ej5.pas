program ej5;

var 
	saldo, saldoAdicionaloMenor: real;
	operacion: char;
	
begin
	write('Digita cuanto saldo tienes: ');
	readln(saldo);
	
	write('Digita la operacion a realizar y su correspondiente monto: ');
	read(operacion);
	readln(saldoAdicionaloMenor);

	repeat
		case operacion of
			'D','d': saldo:=saldo+saldoAdicionaloMenor;
			'R','r': saldo:=saldo-saldoAdicionaloMenor;
		else
			writeln('Operacion invalida');
		end;
		
		write('Digita la operacion a realizar y su correspondiente monto o escribe X para salir: ');
		read(operacion);
		readln(saldoAdicionaloMenor);
	until (operacion='X') or (operacion='x');
	
	writeln('El saldo final es de: ', saldo:0:2);
	
end.
