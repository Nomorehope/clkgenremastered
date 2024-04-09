module tx_uart(
			input clk,
			input rst_n,
			input [7:0]data,
			input tx_en,
			output rs232_tx,
			output reg tx_stop,
			input clk_bps
			//output bps_start
			);
			

//reg bps_start_r;	//
reg[3:0] num;
reg rs232_tx_r;

always @ (posedge clk or negedge rst_n) begin
	if(!rst_n) begin
			num <= 4'd0;
			rs232_tx_r <= 1'b1;
		end
	else if(tx_en) begin
			if(clk_bps)	begin
					num <= num+1'b1;
					case (num)
						4'd0: rs232_tx_r <= 1'b0; 	//
						4'd1: rs232_tx_r <= data[0];	//
						4'd2: rs232_tx_r <= data[1];	//
						4'd3: rs232_tx_r <= data[2];	//
						4'd4: rs232_tx_r <= data[3];	//
						4'd5: rs232_tx_r <= data[4];	//
						4'd6: rs232_tx_r <= data[5];	//
						4'd7: rs232_tx_r <= data[6];	//
						4'd8: rs232_tx_r <= data[7];	//
						4'd9: rs232_tx_r <= 1'b1;	//
					 	default: rs232_tx_r <= 1'b1;
						endcase
				end
			else if(num==4'd11) begin 
				num <= 4'd0;
				tx_stop <= 1;
			end
		end

end

assign rs232_tx = rs232_tx_r;
endmodule