program Ejercicio1 (input, output);
var x,y: integer;

procedure modificarNumero(var x,y: integer);
begin
x:=20;
y:=22;

writeln(x+y);
end;

procedure NoModificarNumero(x,y :real);
begin
end;

begin
x:=1;
y:=1;
writeln('EL valor es:',x, y);

modificarNumero(x,y);

writeln('EL valor es:',x,y);

end.
