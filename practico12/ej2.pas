Program ej2;
type
	TipoVehiculo = (barco, camion);
	
	Transporte = record
					capacidad : integer;
					case vehiculo : TipoVehiculo of
					barco : (habitaciones : integer);
					camion : ();
				end;
				
	PunteroTransporte = ^Transporte; {Hace referencia a que tipo de datos se guardaran en la memoria}
	
var a, b, c : PunteroTransporte;

begin
	new(a);
	a^.capacidad := 30;
	a^.vehiculo := barco;
	a^.habitaciones := 4;
	new(b);
	b^.capacidad := 5;
	b^.vehiculo := camion;
	new(c);
	c^.capacidad := 5;
	c^.vehiculo := camion;

	c^.capacidad := 4;
	b^ := c^;

	writeln(b^.capacidad)
end.
