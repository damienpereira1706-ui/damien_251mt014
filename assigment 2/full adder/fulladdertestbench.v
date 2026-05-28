// testbench will be written here

`timescale 1ns / 1ps

module basic_testbench1;
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    fulladder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("basics_sim.vcd"); 
        $dumpvars(0, basic_testbench1); 

        $display("time\ta\tb\tcin\tsum\tcout");
        $monitor("%0dns\t%b\t%b\t%b\t%b\t%b", $time, a, b, cin, sum, cout);

        a = 0; b = 0; cin = 0; #10;
        a = 0; b = 0; cin = 1; #10;
        a = 0; b = 1; cin = 0; #10; 
        a = 0; b = 1; cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        a = 1; b = 0; cin = 1; #10;
        a = 1; b = 1; cin = 0; #10;
        a = 1; b = 1; cin = 1; #10;
        

        $finish;
    end
endmodule