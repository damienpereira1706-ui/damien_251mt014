module full_adder(input a , input b ,input cin , output cout ,output sum);
  assign sum = a^b^cin;
  assign cout=a&b | cin&(a^b);
  
endmodule

module ripple(input [3:0] x , input [3:0] y , input cin0 , output [4:0]sum);
  wire c2, c3 ,c4 , c5;
  full_adder inst1(x[0], y[0] , cin0  , c2 , sum[0]);
  full_adder inst2(x[1] , y[1] , c2, c3 ,sum[1]);
  full_adder inst3(x[2] , y[2] , c3, c4 ,sum[2]);
  full_adder inst4(x[3] , y[3] , c4  , sum[4] , sum[3]);

endmodule
