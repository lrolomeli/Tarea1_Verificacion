module bitodec
(
input a2,
input [6:0]bits,
output [3:0]centenas_l,
output [3:0]decenas_l,
output [3:0]unidades_l,
output sign
);

logic [6:0]complement_a2;

always begin
	
	if(a2)
	begin
		sign = 126;
		complement_a2 = ~(bits) + 1;
	end
	else
	begin
		sign = 127;
		complement_a2 = bits;
	end
	if(complement_a2 < 10)
		begin
		centenas_l = 0;
		decenas_l = 0;
		unidades_l = complement_a2;
		end
	else if (complement_a2 < 100)
		begin
		centenas_l = 0;
		decenas_l = complement_a2 / 10;
		unidades_l = complement_a2-(decenas_l * 10);
		end
	else
		begin
		centenas_l = complement_a2/100;
		decenas_l = (complement_a2-(centenas_l*100))/10;
		unidades_l = complement_a2-(centenas_l*100 + decenas_l*10);
		end

end
endmodule 