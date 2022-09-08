program Ejercicio3 (output);
var num, aux, temp : integer;

procedure pascal (num : integer; var suma : integer);
var aux : integer;
begin
	temp := 2 * num + suma;
	aux := temp * suma;
	num := num + 1;
	suma := suma + num;
	writeln (temp, aux, num, suma)
end;

begin
	num := 1;
	aux := 0;
	temp := 0;
	pascal (num, temp); 
	writeln (num, aux, temp);
	temp := temp + 1;
	pascal (temp, num);
	writeln (num, aux, temp)
end.
