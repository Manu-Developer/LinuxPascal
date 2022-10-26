program ej7;
const	M = 5;
		N = 5;
		P = 5;
type	RangoM = 1..M;
		RangoN = 1..N;
		RangoP = 1..P;
		MatrizMxN = ARRAY [RangoM, RangoN] OF Integer;
		MatrizNxP = ARRAY [RangoN, RangoP] OF Integer;
		MatrizMxP = ARRAY [RangoM, RangoP] OF Integer;

function producto(var a1: MatrizMxN; var a2: MatrizNxP): MatrizMxP;
	var fin : MatrizMxP;
        i,j,k,aux: integer;
	begin 
		for i:=1 to M do begin 
            for j:=1 to P do begin 
                aux:=0;
                for k:= 1 to N do 
                    aux:= aux + a1[i,k]*a2[k,j];
                fin[i,j]:= aux    
            end 
        end;
        producto := fin
    end;

begin

end.
