program casePruebas;
var r,s,t,k: integer;

begin
	r:=0;
	s:=0;
	t:=0;

	write('Escribe el valor de k: ');
	readln(k);
	
	case k of
		0: r:=r+1;
		1: s:=s+1;
		2,3,4: t:=t+2
	end

end.
