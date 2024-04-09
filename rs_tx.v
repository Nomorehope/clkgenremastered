module rs_tx(
    input wire clk,
    input wire dataready,
    input wire [7:0] data,
    output  tx,
	 output  rts
);

parameter Idle = 2'b00;
parameter StartBit = 2'b01;
parameter DataBit = 2'b10;
parameter StopBit = 2'b11;


parameter Divider = 12'd433; // 115200 bit/s

reg[3:0] state, nextState;
reg[3:0] bitCount;
reg[15:0] tickCount;
reg rts_r;

initial begin
	state = Idle;
	rts_r = 1'b1;
	nextState = Idle;
	bitCount = 4'b0000;
	tickCount = 0;
end
reg tx_r;

always @(posedge clk)
begin
	state = nextState;
	case(state)
	
		Idle:
			begin
				tx_r = 1'b1;
				if (dataready == 1'b1)
					begin
						nextState = StartBit;
						rts_r = 1'b0;
					end
				else
					begin
						nextState = state;
						rts_r = 1'b1;
				end
			end
			
		StartBit:
			begin
				tx_r = 1'b0;
				tickCount = tickCount + 1;
				if (tickCount == Divider)
					begin
						nextState = DataBit;
						tickCount = 0;
					end
				else
					nextState = state;
			end
			
		 DataBit:
			begin
				tickCount = tickCount + 1;
				if (tickCount == Divider)
					begin
						tickCount = 0;
						bitCount = bitCount + 1;
						if (bitCount == 4'b1000)
							begin
									nextState = StopBit;
									bitCount = 4'b0000;
							end
					end
				else
					tx_r = data[bitCount];
			end
			
		StopBit:
			begin
				tx_r = 1'b1;
				rts_r = 1'b1;
				tickCount = tickCount + 1;
				if (tickCount == Divider)
					begin
						nextState = Idle;
						tickCount = 0;
					end
				else
					nextState = state;
			end
			
		default:
			nextState = Idle;
			
	endcase;
end

assign tx = tx_r;
assign rts = rts_r;

endmodule