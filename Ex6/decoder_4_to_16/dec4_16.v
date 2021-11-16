module dec4_16 (a,b,c,d,o);

input a,b,c,d;

output [15:0] o;

wire a0 , b0 , c0 , d0;

not (a0,a);
not (b0,b);
not (c0,c);
not (d0,d);

and (o[0], d0,a0,b0,c0);
and (o[1], d0,a0,b0,c);
and (o[2], d0,a0,b,c0);
and (o[3], d0,a0,b,c);

and (o[4], d0,a,b0,c0);
and (o[5], d0,a,b0,c);
and (o[6], d0,a,b,c0);
and (o[7], d0,a,b,c);

and (o[8],  d,a0,b0,c);
and (o[9],  d,a0,b0,c);
and (o[10], d,a0,b0,c);
and (o[11], d,a0,b0,c);

and (o[12], d,a0,b0,c);
and (o[13], d,a0,b0,c);
and (o[14], d,a0,b0,c);
and (o[15], d,a0,b0,c);

endmodule