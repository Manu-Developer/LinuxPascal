program P6E2;
var letra, letra1, letraUltima: char;
    contador: integer;
begin
	contador:=0;
    write('Ingrese la letra: ');
    read(letra);
    Writeln;
    write('Ingrese el texto: ');
	
	repeat
		read(letra1);
		while (letra1<>' ') do
		begin
			letraUltima:=letra1;
			read(letra1);
		end;
		if letraUltima=letra then contador:=contador+1;
	until (letraUltima='.');
    writeln('Salida: ' , contador);
end.
