program hexaDecimal;
var c1,c2,c3 :char;
	v1,v2,v3: integer;
	hexIncorrecto: boolean;
	
	begin 
		hexIncorrecto := false;
		write('Ingrese el HEX: ');
		read(c1,c2,c3);
		
		v1 := ord(c1) - ord('0');
		v2 := ord(c2) - ord('0');
		v3 := ord(c3) - ord('0');
		
	if( (v1 > 9) or (v1 < 0)) then begin
		case c1 of 
			'A','a': v1:=10;
			'B','b': v1:=11;
			'C','c': v1:=12;
			'D','d': v1:=13;
			'E','e': v1:=14;
			'F','f': v1:=15;
		else 
			hexIncorrecto := true;
		end
	end;
	
	if( (v2 > 9) or (v2 < 0)) then begin
		case c2 of 
			'A','a': v2:=10;
			'B','b': v2:=11;
			'C','c': v2:=12;
			'D','d': v2:=13;
			'E','e': v2:=14;
			'F','f': v2:=15;
		else 
			hexIncorrecto := true;
		end
	end;
	
	if( (v3 > 9) or (v3 < 0)) then begin
		case c3 of 
			'A','a': v3:=10;
			'B','b': v3:=11;
			'C','c': v3:=12;
			'D','d': v3:=13;
			'E','e': v3:=14;
			'F','f': v3:=15;
		else 
			hexIncorrecto := true;
		end
	end;
	
	if (hexIncorrecto) then
		writeln('Escriba corectamente el numero en HEXADECIMAL')
	else 
		writeln('Hexadecimal: ',c1,c2,c3, ' Decimal: ' , v1*sqr(16) + v2*16 + v3);
end.
