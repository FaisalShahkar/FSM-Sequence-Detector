// Code your design here
module seq_detector1011(
  input wire clk,
  input wire reset,
  input wire inp,
  output reg out
);
  
  reg [2:0] present_state, next_state;
  parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;
  
  //logic for present state
  always @(posedge clk)
    begin 
      if (reset)
        begin
          present_state <= S0;
        end
      else
        begin
          present_state <= next_state;
        end
    end
  //logic for next state
  always @(*)
    begin
      case(present_state)
        S0: begin
          if(inp)
            next_state = S1;
          else
            next_state = S0;
        end
        S1: begin
          if(inp)
            next_state = S1;
          else
            next_state = S2;
        end
        S2: begin
          if(inp)
            next_state = S3;
          else
            next_state = S0;
        end
        S3: begin
          if(inp)
            next_state = S4;
          else
            next_state = S2;
        end
        S4: begin
          if(inp)
            next_state = S1;
          else
            next_state = S2;
        end
      endcase
    end
  
  // logic for output
  always @(*)
    begin
      case(present_state)
        S0:  out = 0; 
        S1:  out = 0; 
        S2:  out = 0; 
        S3:  out = 0; 
        S4:  out = 1; 
        default: out = 0;
    endcase
    end
endmodule
