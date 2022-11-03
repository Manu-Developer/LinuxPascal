program ej5;
type
	Positivo = 1..MaxInt;
	ListaInt = ^TCelda;
	TCelda = record
				info : integer;
				sig : ListaInt
			end;

procedure crearListaUnitaria (var nuevo : ListaInt);
begin
	new(nuevo);
	nuevo := NIL;
	nuevo^.info := 1;
	nuevo^.sig := NIL;
end;

var lista: ListaInt;
begin
	crearListaUnitaria(lista);
	writeln(lista^.info)
end.
