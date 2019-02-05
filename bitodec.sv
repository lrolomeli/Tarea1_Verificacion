//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineers: Luis Roberto Lomeli Plascencia, Jorge Mizael Rodriguez Gutierrez
// 
// Create Date:  04/02/2019
// Design Name:  
// Module Name:  bitodec
// Project Name: tarea1
// Target Devices: FPGA ALTERA DE2-115
// Tool versions: Quartus Prime
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

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
	/* Checar si el sw de complemento A2 esta encendido, */
	/* Y si hay que proceder a negar la entrada y sumar uno. */
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
	/* Para entradas menores a 10 unicamente es necesario extraer las unidades. */
	if(complement_a2 < 10)
		begin
		centenas_l = 0;
		decenas_l = 0;
		unidades_l = complement_a2;
		end
	/* Para entradas menores a 100 necesitamos las unidades y decenas. */
	else if (complement_a2 < 100)
		begin
		centenas_l = 0;
		decenas_l = complement_a2 / 10;
		unidades_l = complement_a2-(decenas_l * 10);
		end
	/* Para las otras entradas como no hay negativos ni mayores a 2^(7) = 127. */
	/* Necesitamos la centena aparte de unidades y decenas pero 
	/* podriamos no calcular las centenas y simplemente escribir 1. */
	else
		begin
		centenas_l = complement_a2/100;
		decenas_l = (complement_a2-(centenas_l*100))/10;
		unidades_l = complement_a2-(centenas_l*100 + decenas_l*10);
		end

end //always 
endmodule 