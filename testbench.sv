
module tb_carry_lookahead_adder_4bit;

    reg [3:0] A, B;
    reg Cin;

    wire [3:0] Sum;
    wire Cout;

    carry_lookahead_adder_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
      $dumpfile("carry_lookkahead_adder_4bit.vcd");
      $dumpvars;
        $display("Time\tA\tB\tCin\t|\tSum\tCout");
        $display("----------------------------------------------");

        A = 4'b0000; B = 4'b0000; Cin = 1'b0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);

        A = 4'b0001; B = 4'b0001; Cin = 1'b0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);

        A = 4'b0011; B = 4'b0010; Cin = 1'b1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);

        A = 4'b0101; B = 4'b0101; Cin = 1'b0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);

        A = 4'b1111; B = 4'b0001; Cin = 1'b1; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);

        A = 4'b1010; B = 4'b0101; Cin = 1'b0; #10;
        $display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule