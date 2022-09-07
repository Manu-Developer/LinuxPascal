program P6E2B;
var letra, e, ultima: char;
    contador: integer;
begin
	contador:=0;
    write('Ingrese la letra: ');
    readln(letra);
    Writeln;
    write('Ingrese el texto: ');
    repeat
		read(e);
		while (e = ' ') do 
			read(e);
			ultima := e;
			repeat
				read(e)   
			until ((e = ' ' ) or (e = '.') );
		if (ultima = letra) then 
			contador := contador + 1 
	until (e = '.');
        WriteLn('Salida: ' , contador);
end.
