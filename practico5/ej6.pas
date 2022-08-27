program ej5;
var letra,letraprevia: char;
const centinela='$';

begin
	write('Ingrese la cadena (min 2 caracteres)');
    read(letra);
    letraPrevia := letra;
	repeat
		read(letra);
		if (letra = letraPrevia) then
			write(letra,letraPrevia);
		letraPrevia:=letra;
	until (letra = centinela)
	
end.
