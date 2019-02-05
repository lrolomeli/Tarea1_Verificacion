module segments(
    input w,
    input x,    //entradas
    input y,
    input z,
	 
    output a,
    output b,
    output c,
    output d,  //salidas
    output e,
    output f,
    output g

    );
	 
	 assign a = ((~w & ~y) & (x ^ z)) | ((w & z)&(x ^ y));
    assign b = ((~w&x) & (y^z))| ((w&x)&((~y&~z)|(y&z)))|((w&y)&(x^z));
    assign c = (~w&~x&y&~z)|((w&x)&((~y&~z)|y));
	 assign d = ((~w&~y) & (x^z))|(x&y&z)|((w&~x)&(y^z));
	 assign e = ~w&(z|(x&~y))|(w&~x&~y&z);
	 assign f = (~w&~x&y)|((~y&z)&((~w&~x)|(w&x)))|(~w&x&y&z);
	 assign g = (~y&((~w&~x)|(w&x&~z)))|(~w&x&y&z);
	 
endmodule
