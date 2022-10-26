program ej11;

type Complejo = record
			      re, im : Real;
			  end;

var numComplejo1,numComplejo2,numComplejoFinal: Complejo;

procedure sumaComplejos (c1, c2 : Complejo; VAR c3 : Complejo);
begin
	c3.re:=c1.re+c2.re;
	c3.im:=c1.im+c2.im;
	writeln('La parte real de c3 en la suma es: ', c3.re:4:4);
	writeln('La parte imaginaria de c3 en la suma es: ', c3.im:4:4);
end;

procedure multComplejos (c1, c2 : Complejo; VAR c3 : Complejo);
begin
	c3.re:=c1.re * c2.re - c1.im * c2.im;
	c3.im:=c1.im * c2.re + c2.im * c1.re;
	writeln('La parte real de c3 en la multiplicacion es: ', c3.re:4:4);
	writeln('La parte imaginaria de c3 en la multiplicacion es: ', c3.im:4:4);
end;


begin
	numComplejo1.re:=2;
	numComplejo1.im:=3;
	numComplejo2.re:=4;
	numComplejo2.im:=6;
	
	sumaComplejos(numComplejo1,numComplejo2,numComplejoFinal);
	multComplejos(numComplejo1,numComplejo2,numComplejoFinal);
end.
