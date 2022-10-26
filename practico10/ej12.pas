program ej12;
const
	CANT_LETRAS = 4; { valor entero mayor a 0 }
	CANT_ARTICULOS = 5; { valor entero mayor a 0 }
type
	TIdioma = (es, en, pt);
	TFecha = record
				dia : 1..31;
				mes : 1..12;
				anio : 2001..9999 (* La wikipedia comienza en 2001 *)
			end;

	TNombre = array [1..CANT_LETRAS] of char;

	TArticulo = record
					nombre : TNombre;
					idioma : TIdioma;
					visitas : Integer;
					ultima_act : TFecha;
				end;
			
	Wikipedia = array [1..CANT_ARTICULOS] OF TArticulo;
	
var fecha1,fecha2: TFecha;


function esPosterior (f1, f2: TFecha) : boolean;
begin
	if(f1.anio = f2.anio) then
		if(f1.mes = f2.mes) then
			esPosterior:=f1.dia > f2.dia
		else
			esPosterior:=f1.mes > f2.mes
	else
		esPosterior:=f1.anio > f2.anio;
end;

{ 
function esPosterior (f1, f2: TFecha) : boolean
begin
    if (f1.anio > f2.anio) then 
        esPosterior := true
    else if (f1.anio = f2.anio) AND (f1.mes > f2.mes) then 
        esPosterior := true
    else if (f1.mes = f2.mes) AND (f1.dia > f2.dia) then
        esPosterior := true;
    else
        esPosterior := false;
end;}

procedure articuloMasReciente (wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo);
var post: TFecha;
	indice,i:integer;
begin
	i:=1;
	while wiki[i].idioma <> idioma do i:= i+1;
	post := wiki[i].ultima_act;
	while((i+1) <= CANT_ARTICULOS) do
	begin
		i:=i+1;
		if wiki[i].idioma = idioma then
			if esPosterior(wiki[i].ultima_act, post) then
			begin
				post:=wiki[i].ultima_act;
				indice:=i;
			end;
	end;
	art:=wiki[indice];
end;

procedure imprimirArticulosMasRecientes (wiki: Wikipedia);
var ares, aren, arpt: TArticulo;
	i: integer;
begin
		articuloMasReciente(wiki,es,ares);
		articuloMasReciente(wiki,en,aren);
		articuloMasReciente(wiki,pt,arpt);
		
		write('Nombre: ');
		for i:=1 to CANT_LETRAS do write(ares.nombre[i]);
		writeln('Visitas:', ares.visitas, 'Ultima Actualizacion', ares.ultima_act.dia, '/', ares.ultima_act.mes, '/', ares.ultima_act.anio);
		
		write('Nombre: ');
		for i:=1 to CANT_LETRAS do write(aren.nombre[i]);
		writeln('Visitas:', aren.visitas, 'Ultima Actualizacion', aren.ultima_act.dia, '/', aren.ultima_act.mes, '/', aren.ultima_act.anio);
		
		write('Nombre: ');
		for i:=1 to CANT_LETRAS do write(arpt.nombre[i]);
		writeln('Visitas:', arpt.visitas, 'Ultima Actualizacion', arpt.ultima_act.dia, '/', arpt.ultima_act.mes, '/', arpt.ultima_act.anio);
end;


begin
	fecha1.dia:=23;
	fecha1.mes:=10;
	fecha1.anio:=2003;
	
	fecha2.dia:=5;
	fecha2.mes:=1;
	fecha2.anio:=2007;
	
	writeln(esPosterior(fecha1,fecha2))
end.
