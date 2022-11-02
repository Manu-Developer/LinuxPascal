program test;
type
ptrnum = ^integer;
var
ptr1, ptr2: ptrnum;
begin
	new(ptr1);
ptr1^:= 6;
ptr2:= ptr1;
writeln(ptr2^); (* --> 6 *)
ptr2^:= ptr1^ + 2; (* ¿qué pasa aquí? *)
writeln(ptr2^);
writeln(ptr1^);
end.
