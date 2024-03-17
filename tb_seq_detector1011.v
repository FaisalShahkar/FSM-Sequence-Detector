module seq_detector1011_tb;
    // Inputs and outputs
    reg clk;
    reg reset;
    reg inp;
    wire out;

    // Instantiation
    seq_detector1011 DUT (
      .clk(clk),
      .reset(reset),
      .inp(inp),
      .out(out)
    );
  
  // Clock generation
  always begin 
    #5 clk = ~clk;
  end
  
  // Initialization
  initial begin
    clk = 0;
    reset = 1; 
    inp  = 0;
    #10 reset = 0; 
    
    // Test sequence "1011"
    #10 inp = 1; 
    #10 inp = 0; 
    #10 inp = 1; 
    #10 inp = 1; 
    #10 inp = 0; 
    #10 inp = 1; 
    #10 inp = 1; 
  end

  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0);
    #120;
    $finish;
  end
endmodule
