program p6;
var e1,e2,e3, cant:integer;
    x1,x2:real;

    procedure Raices (a,b,c:integer; var x1,x2: real; var cant: integer);
    {Asumo que a > 0}
    var discriminante: real;
    begin 
		discriminante := sqr(b)-4*a*c;
		if (discriminante < 0) then 
			cant := 0
		else if (discriminante = 0) then 
		   begin 
				cant:=1;
				x1:= -b/(2*a)
			end 
		else 
			begin 
				cant:=2;
				x1:= (-b+sqrt(discriminante))/(2*a);
				x2:= (-b-sqrt(discriminante))/(2*a)
			end
    end;
    
{Programa principal}
begin 
	writeln('Ingrese los 3 coeficientes');
    read(e1,e2,e3);
    raices(e1,e2,e3,x1,x2,cant);
    case cant of 
        0: Writeln('Sin raices');
        1: Writeln('Unica raiz x = ', x1:2:2);
        2: Writeln('Raiz doble, x = ', x1:2:2 , ' y x = ', x2:2:2)
    end
end.
