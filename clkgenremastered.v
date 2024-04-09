module clkgenremastered(input clk, external, output reg ti, output rs232_tx);

	wire tempwire;
	reg [13:0]cnt;

	genpll genpll(.inclk0(clk), .c0(tempwire));

	always @ (posedge tempwire)
		begin
			if (cnt >= 14'd10240)
				begin
					cnt <= 1'b0;
					ti <= 1'b0;
				end
			else 
				begin
					if(cnt < 2'd2) ti <= 1'b1;
					else 				ti = 0;
					cnt = cnt + 1'b1;
				end
		end
	
	
	reg check;
	reg [7:0]data;
	reg [27:0] count;
	reg [7:0] predata;
	/*
	always @ (posedge clk)
		begin
			if (count >= 50000000)
				count <= 0;
			else if (count == 10)
				begin
					external <= 1;
					count <= count + 1;
				end
			else
				begin
					external <= 0;
					count <= count + 1;
				end
	end
*/
	
	reg ready;
	
	always @ (posedge clk)
		begin
			if (external)
				begin
					//predata <= cnt;
					data <= cnt;
					check <= 1;
				end
			
			if (check && rts)
				begin
					//data <= predata;
					ready <= 1;
				end
			else if (check && ready)
				begin
					ready <= 0;
					check <= 0;
				end
		end

	
	wire rs232_tx_r;
	assign rs232_tx = rs232_tx_r;

	rs_tx rs_tx(
		 .clk(clk),
		 .dataready(ready),
		 .data(data),
		 .tx(rs232_tx_r),
		 .rts(rts)
	);

endmodule

/*
speed_select speed_select(
				.clk(clk),
				.rst_n(rst_n),
				.bps_start(bps_start),
				.clk_bps(clk_bps)
			);
/*
tx_uart(
			.clk(clk),
			.rst_n(rst_n),
			.data(data),
			.tx_en(tx_en),
			.tx_stop(tx_stop),
			.rs232_tx(rs232_tx),
			.clk_bps(clk_bps));
			//.bps_start(bps_start));
*/
