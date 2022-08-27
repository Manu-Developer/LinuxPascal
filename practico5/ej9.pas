program ej9;
var numero,sumaSubI,n,s,a: real;

begin
s:=0;
n:=0;
a:=0;
numero:=0;
sumaSubI:=0;

read(numero);

repeat
	n:=n+1;
	sumaSubI:=sumaSubI+numero;
	a:=sumaSubI/n;
	s:=s+sqr(numero);
	read(numero);
until (numero < 0);

writeln(sqrt((s/n)-sqr(a)):0:2)
end.
