program ej7;
type vocal = (a, e, i, o, u);
var letra : vocal;
	uncar : char;
	
begin
	letra := u;
	repeat
		read (uncar);
		writeLn ('El caracter leido es: ', uncar);
		letra := pred (letra);
	until letra = a;

end.
