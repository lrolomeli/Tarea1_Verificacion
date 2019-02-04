module bcd

(
input [7:0] bits,

output [0:6] unidades,
output [0:6] decenas,
output [0:6] centenas

);

logic [3:0] unidades_l;
logic [3:0] decenas_l;
logic [3:0] centenas_l;

always begin
	if (bits < 10)
		begin
		centenas_l = 0;
		decenas_l = 0;
		unidades_l = bits;
		end
	else if (bits < 100)
		begin
		centenas_l = 0;
		decenas_l = bits / 10;
		unidades_l = bits-(decenas_l * 10);
		end
	else
		begin
		centenas_l = bits/100;
		decenas_l = (bits-(centenas_l*100))/10;
		unidades_l = bits-(centenas_l*100 + decenas_l*10);
		end

case (unidades_l)
	0:
	unidades = 1;
	1:
	unidades = 79;
	2:
	unidades = 18;
	3:
	unidades = 6;	
	4:
	unidades = 76;
	5:
	unidades = 36;
	6:
	unidades = 32;
	7:
	unidades = 15;
	8:
	unidades = 0;
	9:
	unidades = 4;
endcase
case (decenas_l)
	0:
	decenas = 1;
	1:
	decenas = 79;
	2:
	decenas = 18;
	3:
	decenas = 6;	
	4:
	decenas = 76;
	5:
	decenas = 36;
	6:
	decenas = 32;
	7:
	decenas = 15;
	8:
	decenas = 0;
	9:
	decenas = 4;
endcase
case (centenas_l)
	0:
	centenas = 1;
	1:
	centenas = 79;
	2:
	centenas = 18;
	3:
	centenas = 6;	
	4:
	centenas = 76;
	5:
	centenas = 36;
	6:
	centenas = 32;
	7:
	centenas = 15;
	8:
	centenas = 0;
	9:
	centenas = 4;
endcase
end
endmodule
