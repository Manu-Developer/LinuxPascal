program E13P10;
const 
    CANT_SALONES = 5; { valor entero mayor a 0 } 
    MAX_PIZARRONES = 3; { valor entero mayor a 0 } 
type 
    TSalon = record 
                asientos : Integer; 
                pizarrones : 1..MAX_PIZARRONES; 
                hayProyector : Boolean; 
            end; 
    
    TFacultad = array [1..CANT_SALONES] of TSalon;
var f: TFacultad;
i, sal, asi, first: integer;
//a
procedure informeSalones (facu: TFacultad);
var i : integer;
begin
    for i:= 1 to CANT_SALONES do
    begin
        writeln('Salon Nro: ', i:2);
        write('Cantidad de Asientos: ',facu[i].asientos:2);
        write(' Cantidad de Pizarrones: ', facu[i].pizarrones:2);
        if facu[i].hayProyector then writeLn(' Tiene proyector') else writeLn(' No tiene proyector');
    end;
end;

//b 
procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer; var maxAsientos: Integer);
var i: integer;
begin
    maxAsientos := facu[1].asientos;
    indSalon := 1;
    for i:= 2 to CANT_SALONES do 
    begin
        if facu[i].asientos > maxAsientos then 
        begin
            maxAsientos := facu[i].asientos;
            indSalon := i;
        end;
    end;
    write('Salon Nro: ',indSalon:2, ' con mas asientos, tiene ' ,maxAsientos:2, ' asientos');
end;

//c
function primerSalonSinAsientos (facu: TFacultad) : Integer;
var  i: integer;
begin
    i := 1;
    while (i <= CANT_SALONES) AND (facu[i].asientos <>  0 ) do i := i + 1;
    if (i <= CANT_SALONES)  then 
        primerSalonSinAsientos := i
    else primerSalonSinAsientos := 0; 
end;

begin
    for i:= 1 to CANT_SALONES do 
    begin

        read(f[i].asientos);
        read(f[i].pizarrones);
        f[i].hayProyector := false;
    end;
    informeSalones(f);
    salonMasAsientos(f, sal, asi);
    first := primerSalonSinAsientos(f);
    write(first);
end.
