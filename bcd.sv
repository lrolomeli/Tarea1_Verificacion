//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineers: Luis Roberto Lomeli Plascencia, Jorge Mizael Rodriguez Gutierrez
// 
// Create Date:  04/02/2019
// Design Name:  
// Module Name:  bcd
// Project Name: tarea1
// Target Devices: FPGA ALTERA DE2-115
// Tool versions: Quartus Prime
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

//Top module 
module bcd
(
input a2_in,
input [6:0] bits,

output [6:0] unidades,
output [6:0] decenas,
output [6:0] centenas,
output [6:0]a2_out

);

logic [3:0] unidades_l;
logic [3:0] decenas_l;
logic [3:0] centenas_l;

bitodec bctd
(
		//inputs 
		.a2(a2_in),
		.bits(bits),
		
		//outputs 
		.unidades_l(unidades_l),
		.decenas_l(decenas_l),
		.centenas_l(centenas_l),
		.sign(a2_out)
		
);

segments units_segment
(
     //inputs 
     .w(unidades_l[3]),
     .x(unidades_l[2]),
     .y(unidades_l[1]),
     .z(unidades_l[0]),
	  
	  //outputs 
     .a(unidades[0]),
     .b(unidades[1]),
     .c(unidades[2]),
     .d(unidades[3]),
     .e(unidades[4]),
     .f(unidades[5]),
     .g(unidades[6])
	 
);

segments tens_segment
(
	  //inputs 
     .w(decenas_l[3]),
     .x(decenas_l[2]),
     .y(decenas_l[1]),
     .z(decenas_l[0]),
	  
	  //outputs 
     .a(decenas[0]),
     .b(decenas[1]),
     .c(decenas[2]),
     .d(decenas[3]),
     .e(decenas[4]),
     .f(decenas[5]),
     .g(decenas[6])
	 
);
	
segments hundreds_segment
(
     //inputs 
     .w(centenas_l[3]),
     .x(centenas_l[2]),  
     .y(centenas_l[1]),
     .z(centenas_l[0]),
	  
	  //outputs 
     .a(centenas[0]),
     .b(centenas[1]),
     .c(centenas[2]),
     .d(centenas[3]), 
     .e(centenas[4]),
     .f(centenas[5]),
     .g(centenas[6])
	 
);	


endmodule
