program ej6;
type TipoMes = (enero,febrero,marzo,abril,mayo,junio,julio,agosto,setiembre,octubre,noviembre,diciembre);
	TipoMesRango = 1..12;
	
var mes : TipoMes;

procedure MostrarMes(mes: TipoMes);
begin
	case mes of
		enero : write('enero');
		febrero : write('febrero');
		marzo : write('marzo');
		abril : write('abril');
		mayo : write('mayo');
		junio : write('junio');
		julio : write('julio');
		agosto : write('agosto');
		setiembre: write('setiembre');
		octubre : write('octubre');
		noviembre: write('noviembre');
		diciembre: write('diciembre');
	end;
end;

procedure AsignarMes(mes: TipoMesRango; var mesParaAsignar: TipoMes);
begin
	case mes of
		1 : mesParaAsignar:=enero;
		2 : mesParaAsignar:=febrero;
		3 : mesParaAsignar:=marzo;
		4 : mesParaAsignar:=abril;
		5 : mesParaAsignar:=mayo;
		6 : mesParaAsignar:=junio;
		7 : mesParaAsignar:=julio;
		8 : mesParaAsignar:=agosto;
		9 : mesParaAsignar:=setiembre;
		10 : mesParaAsignar:=octubre;
		11 : mesParaAsignar:=noviembre;
		12 : mesParaAsignar:=diciembre;
	end;
end;

begin
	AsignarMes(4,mes);
	writeln(mes)
end.
