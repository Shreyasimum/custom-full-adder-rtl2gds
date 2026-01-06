`timescale 1ns / 1ps

module tb_full_adder;

    reg a;
    reg b;
    reg cin;

    wire sum;
    wire cout;

    // Instantiate BASELINE DUT
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    reg [2:0] i;

    initial begin
        $display("A B Cin | Sum Cout");

        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i;
            #10;
            $display("%b %b %b | %b %b", a, b, cin, sum, cout);
        end

        $finish;
    end

endmodule


