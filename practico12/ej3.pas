program ej3;
type
	Positivo = 1..MaxInt;
	ListaInt = ^TCelda;
	TCelda = record
			info : integer;
			sig : ListaInt
		end;
		
function suma(l : ListaInt) : integer;
var totalFinal:integer;
begin
	totalFinal:=0;
	
	while(l<>nil) do begin
		totalFinal:=totalFinal+l^.info;
		l:=l^.sig;
	end;
	
	suma:=totalFinal;
end;

function minimo(l : ListaInt) : integer;
var minimoFinal:integer;
begin
	minimoFinal:=l^.info;
	
	while(l<>nil) do begin
		if(l^.info<minimoFinal) then minimoFinal:=l^.info;
		l:=l^.sig;
	end;
	
	minimo:=minimoFinal;
end;

function producto(l : ListaInt) : integer;
var productoFinal:integer;
begin
	productoFinal:=1;
	
	while(l<>nil) do begin
		if(l^.info<>0) then productoFinal:=productoFinal*l^.info;
		l:=l^.sig;
	end;
	
	producto:=productoFinal;
end;


function cuantosPares(l : ListaInt) : integer;
var cantidadPares:integer;
begin
	cantidadPares:=0;
	
	while(l<>nil) do begin
		if(l^.info mod 2 = 0) then cantidadPares:=cantidadPares+1;
		l:=l^.sig;
	end;
	
	cuantosPares:=cantidadPares;
end;

function posicion(valor : integer; l : ListaInt) : integer;
var pos:integer;
begin
	pos:=1;
	
	while(l<>nil) and (l^.info <> valor) do begin
		l:=l^.sig;
		pos:=pos+1;
	end;
	
	if(l<>nil) then {SI esto sucede es pq se encontro algo y nunca llego l a ser "nil"}
		posicion:=pos
	else
		posicion:=-1;
	
end;

function ultimo(l : ListaInt) : integer;
begin
	while(l^.sig<>nil) do begin
		l:=l^.sig;
	end;
	
	ultimo:=l^.info;
end;

function ordenada(l : ListaInt) : boolean;
var	valorAnterior:integer;
begin
	valorAnterior:=l^.info;
	l:=l^.sig;
	
	while(l<>nil) and (valorAnterior < l^.info) do begin
		valorAnterior:=l^.info;
		l:=l^.sig;
	end;
	
	ordenada:= (l = nil);
	
end;

var lista1, lista2, lista3: ListaInt;
begin
	new(lista1);
	new(lista2);
	new(lista3);
	
	lista1^.info:=0;
	lista1^.sig:=lista2;
	
	lista2^.info:=221;
	lista2^.sig:=lista3;
	
	lista3^.info:=44;
	lista3^.sig:=nil;
	
	writeln(ordenada(lista1));
end.
