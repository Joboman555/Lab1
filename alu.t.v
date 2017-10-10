// 1 Bit alu test bench
`timescale 1 ns / 1 ps
`include "alu.v"

module testALU ();
  wire[31:0] out;
  wire       zero, overflow, cout;
  reg[31:0]  a, b;
  reg[2:0]   op;

  integer passed_tests = 0;
  integer tests = 0;

  ALU alu (out,cout,zero,overflow,a,b,op);

  initial begin



    // Test Add
    $display("\nAddition");
    $display("-----------------------------------------------------------------");
    op=3'b000;
    a=32'b00000000000011111111111111111111; b=32'b0000000000000000000000000000001;#1000
    tests = tests + 1;
    if (((a + b) == out) && (overflow == 0) && (cout == 0)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    a=32'b11111111111111111111111111111111; b=32'b0000000000000000000000000000000;#1000
    tests = tests + 1;
    if (((a + b) == out) && (overflow == 0) && (cout == 0)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    a=32'b11111111111111111111111111111111; b=32'b0000000000000000000000000000001;#1000
    tests = tests + 1;
    if (((a + b) == out) && (overflow == 0) && (cout == 1)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    // Overflow
    a=32'b10110000000000000000000000000000; b=32'b11000000000000000000000000000001;#1000
    tests = tests + 1;
    if (((a + b) == out) && (overflow == 1)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    a=32'b10000000000000001100011010101100; b=32'b11000000000010101010000000000001;#1000
    tests = tests + 1;
    if (((a + b) == out) && (overflow == 1)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end

    // Test Add
    $display("Subtraction");
    $display("-----------------------------------------------------------------");
    op=3'b001;
    a=32'b00000000000011111111111111111111; b=32'b0000000000000000000000000000001;#1000
    tests = tests + 1;
    if (((a - b) == out) && (overflow == 0) && (cout == 0)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    a=32'b11111111111111111111111111111111; b=32'b0000000000000000000000000000000;#1000
    tests = tests + 1;
    if (((a - b) == out) && (overflow == 0) && (cout == 0)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    a=32'b10110000000000000000000000000000; b=32'b11000000000000000000000000000001;#1000
    tests = tests + 1;
    if (((a - b) == out) && (overflow == 0)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    a=32'b10000000000000001100011010101100; b=32'b11000000000010101010000000000001;#1000
    tests = tests + 1;
    if (((a - b) == out) && (overflow == 0)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end

    a=32'b01000000000000000000000000000000; b=32'b10000000000010101010000000000001;#1000
    tests = tests + 1;
    if (((a - b) == out) && (overflow == 1)) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end
    else begin
        $display("Failed test with op: %b", op);
        $display("a:   %b", a);
        $display("b:   %b", b);
        $display("out: %b", out);
        $display("Cout: %b, Overflow: %b\n", cout, overflow);
    end

    // Test XOR
    $display("\nXOR");
    $display("-----------------------------------------------------------------");
    op=3'b010;
    $display("op: %b", op);
    a=32'b00000000000000000000000000000000; b=32'b00000000000000000000000000000001;#1000
    tests = tests + 1;
    if ((a ^ b) == out) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with:");
    end
    else begin
        $display("Failed test with:");
    end
    $display("a:   %b", a);
    $display("b:   %b", b);
    $display("out: %b", out);

    // Test SLT
    $display("\nSLT");
    $display("-----------------------------------------------------------------");
    op=3'b011;
    $display("op: %b", op);
    // SLT(a,b) = 1 where a<b
    a=32'b00000000000000000000000000000001; b=32'b00000000000000000000000000000010;#1000
    tests = tests + 1;
    $display("Expected: %b ", (a < b));
    $display("Expected: %b ", (b < a));
    if ((a < b) == out) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with:");
    end
    else begin
        $display("Failed test with:");
    end
    $display("a:   %b", a);
    $display("b:   %b", b);
    $display("out: %b", out);
    $display("Cout: %b, Overflow: %b\n", cout, overflow);
    // SLT(a,b) = 0 where a>b
    a=32'b00000000000000000000000000001000; b=32'b00000000000000000000000000000010;#1000
    tests = tests + 1;
    if ((a < b) == out) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with:");
    end
    else begin
        $display("Failed test with:");
    end
    $display("a:   %b", a);
    $display("b:   %b", b);
    $display("out: %b", out);
    $display("Cout: %b, Overflow: %b\n", cout, overflow);
    // SLT(a,b) = 1 where a(is negative)<b(is positive)
    a=32'b10000000000000000000000000001000; b=32'b00000000000000000000000000000010;#1000
    tests = tests + 1;
    if ((a < b) == out) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with:");
    end
    else begin
        $display("Failed test with:");
    end
    $display("a:   %b", a);
    $display("b:   %b", b);
    $display("out: %b", out);
    // SLT(a,b) = 0 where a(is positive)>b(is negative)
    a=32'b00000000000000000000000000001000; b=32'b10000000000000000000000000000010;#1000
    tests = tests + 1;
    if ((a < b) == out) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with:");
    end
    else begin
        $display("Failed test with:");
    end
    $display("a:   %b", a);
    $display("b:   %b", b);
    $display("out: %b", out);
    $display("Cout: %b, Overflow: %b\n", cout, overflow);
    // SLT(a,b) = 1 where a(is negative)>b(is negative)
    a=32'b10000000000000000000000000001000; b=32'b10000000000000000000000000000010;#1000
    tests = tests + 1;
    if ((a < b) == out) begin
        passed_tests = passed_tests + 1;
        $display("Passed test with:");
    end
    else begin
        $display("Failed test with:");
    end
    $display("a:   %b", a);
    $display("b:   %b", b);
    $display("out: %b", out);
    $display("Cout: %b, Overflow: %b\n", cout, overflow);


    $display("%2d/%2d Test Cases Passed", passed_tests, tests);

    end
endmodule
