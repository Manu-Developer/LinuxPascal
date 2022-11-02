const
MAXPIRATAS = 4; {valor entero mayor estricto a 0}
MAXASALTOS = 4; {valor entero mayor estricto a 0}
MAXDIGITOSCI = 4; {valor entero mayor estricto a 0}
MAXCADENA = 4; {valor entero mayor estricto a 0}

type
	TipoCadena = record
					letras: array [1..MAXCADENA] of char;
					tope: 0 .. MAXCADENA
				end;

	TipoCI = array [1..MAXDIGITOSCI] of '0'..'9';
	
	TipoFecha = record
					dia: 1..31;
					mes: 1..12;
					anio: 0..maxint;
				end;

	TipoAsalto = record
					nombre_barco: TipoCadena;
					fecha: TipoFecha;
					botin: integer;
				end;
				
	ConjuntoAsaltos = record
						asaltos: array [1..MAXASALTOS] of TipoAsalto;
						tope: 0..MAXASALTOS
					end;

	TipoCausaMuerte = (asesinato, enfermedad, accidente);
	
	TipoPirata = record
					nombre: TipoCadena;
					ci: TipoCI;
					case estaVivo: boolean of
					true: (asaltos: ConjuntoAsaltos);
					false: (causaMuerte: TipoCausaMuerte; fechaMuerte: TipoFecha)
				end;

	Banda = record
				pirata: array [1..MAXPIRATAS] of TipoPirata;
				tope: 0..MAXPIRATAS
			end;

function CIiguales (ci1,ci2: TipoCI): boolean;
var i:integer;
begin
	i:=1;
	
	while((i<=MAXCADENA) AND (ci1[i]=ci2[i])) do i:=i+1;
	
	CIiguales:=i>MAXCADENA;
end;

function contarDinero (ca: ConjuntoAsaltos; anio:integer):integer;
var i, dineroTotal: integer;
begin
	dineroTotal:=0;
	
	for i:=1 to MAXASALTOS do
	begin
		if (ca.asaltos[i].fecha.anio=anio) then
			dineroTotal:=dineroTotal+ca.asaltos[i].botin;
	end;
	
	contarDinero:=dineroTotal;
end;

var cedula1,cedula2:TipoCI;
begin
	cedula1[1]:='5';
	cedula1[2]:='4';
	cedula1[3]:='3';
	cedula1[4]:='2';
	
	cedula2[1]:='5';
	cedula2[2]:='4';
	cedula2[3]:='3';
	cedula2[4]:='6';
	
	writeln(CIiguales(cedula1,cedula2))
	
end.
