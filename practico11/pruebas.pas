PROGRAM dias (input, output);
TYPE tipodia = (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
VAR dia : tipodia; 
    i : -1 .. 6;
FUNCTION laborable (a : tipodia) : boolean;
begin
  laborable := (Lunes <= a) and (a <= Viernes) ; 
end;
begin
  read (dia) ; 
  while (i <> 1)  do  
  begin
     dia:=laborable(i) ; 
     if laborable (dia)        
     then writeln ('es laborable')
     else writeln ('no es laborable');
     read (dia) ;
  end;
end.
