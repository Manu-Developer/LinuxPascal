program ej4;

type 
	
TipoRaiz = (simple, doble, complejo);

NumeroComplejo = record
					rel: real;
					im:real;
				end;

TipoRaices = record 
				case tipo : TipoRaiz of
					simple : (raiz1, raiz2: real);
					doble : (raiz: real);
					complejo : (raizcompleja : NumeroComplejo);
			end;



procedure raices (a,b,c : real; var r : TipoRaices);
var discriminante: real;
begin
	discriminante:=sqr(b)-4*a*c;
	
	if (discriminante < 0) then
		begin
			r.tipo:=complejo;
			r.raizcompleja.rel := -b/(2*a);
			r.raizcompleja.im := sqrt(abs(discriminante))/(2*a); 
		end
	else if (discriminante = 0) then
		begin
			r.tipo:=doble;
			r.raiz := (-b/(2*a));
		end
	else
		begin
			r.tipo:=simple;
			r.raiz1 := (-b+sqrt(discriminante))/(2*a);
			r.raiz2 := (-b-sqrt(discriminante))/(2*a);
		end
end;


var a,b,c:Real;
	resultado : TipoRaices;
begin
	WriteLn('Ingrese el polinomio de ax^2+bx+c');
	read(a,b,c);
	raices(a,b,c,resultado);
	case resultado.tipo of
		Simple : WriteLn('Caso simple: r1:', resultado.raiz1 :2:2, ' r2: ' , resultado.raiz2 :2:2);
		doble : WriteLn('Caso doble: r (doble):', resultado.raiz :2:2  );
		complejo : WriteLn('Caso compeljo: r1:', resultado.raizcompleja.rel :2:2, '+ ',resultado.raizcompleja.im :2:2 ,'i' );
	end
end.
