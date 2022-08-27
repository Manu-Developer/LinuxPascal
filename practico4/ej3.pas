program ej3;
	var sum,j,ind: integer;
	const TOTAL=4;

begin

	sum := 0;
	
	
	for ind:=1 to TOTAL do
		for j:=1 to ind do
			begin
				sum:= sum+ind+j;
				writeln(sum);
			end
end.


