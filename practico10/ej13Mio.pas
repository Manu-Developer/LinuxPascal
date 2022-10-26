program E13P10;
const 
    CANT_SALONES = 3; { valor entero mayor a 0 } 
    MAX_PIZARRONES = 3; { valor entero mayor a 0 } 
type 
    TSalon = record 
                asientos : Integer; 
                pizarrones : 1..MAX_PIZARRONES; 
                hayProyector : Boolean; 
            end; 
    
    TFacultad = array [1..CANT_SALONES] of TSalon;
    
var f: TFacultad;
	sal, asi: integer;

procedure informeSalones (facu: TFacultad);
var i : integer;
begin
	for i:=1 TO CANT_SALONES do
	begin
		writeln('Salon: Nro:',i);
		writeln('Cantidad de Asientos:', facu[i].asientos:2);
		writeln('Cantidad de pizarrones:', facu[i].pizarrones:2);
        if facu[i].hayProyector then writeLn(' Tiene proyector') else writeLn(' No tiene proyector');

	end;
end;

procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer; var maxAsientos: Integer);
var i : integer;
begin
	maxAsientos := facu[1].asientos;
    indSalon := 1;
    
    for i:=2 to CANT_SALONES do
    begin
		if(facu[i].asientos > maxAsientos) then
		begin
			maxAsientos:=facu[i].asientos;
			indSalon:=i;
		end;
	end;
	
	writeln('Salon Nro: ',indSalon:2, ' con mas asientos, tiene ' ,maxAsientos:2, ' asientos');
end;

function primerSalonSinAsientos (facu: TFacultad) : Integer;
var i: integer;
begin
	i:=1;
    while (i <= CANT_SALONES) AND (facu[i].asientos <>  0 ) do i := i + 1;
	if (i <= CANT_SALONES) then 
		primerSalonSinAsientos := i
    else 
		primerSalonSinAsientos := 0; 
    end;
    
begin
    f[1].asientos := 2;
    f[1].pizarrones := 2;
    f[1].hayProyector := true;

    f[2].asientos := 0;
    f[2].pizarrones := 1;
    f[2].hayProyector := false;

    f[3].asientos := 2;
    f[3].pizarrones := 1;
    f[3].hayProyector := true;
    
    informeSalones(f);
    salonMasAsientos(f, sal, asi);
    WriteLn('----------- Algos datos mas -------------');
    WriteLn('Y el primer salon sin asientos tiene indice: ' , primerSalonSinAsientos(f))
end.
