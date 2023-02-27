module random_verilog();
integer i,j;
integer q_file;
integer k_file;
initial begin
q_file = $fopen("qdata.txt", "w");
k_file = $fopen("kdata.txt", "w");
for(i = 0;i < 64; i=i+1) begin
	for(j=0; j<64; j=j+1) begin
		$fwrite(k_file,"%d",j%16);
end
		$fwrite(k_file,"\n",);
end
	for(j=0; j<64; j=j+1) begin
$fwrite(q_file,"%d",j%16);
end
$fclose(q_file);
$fclose(k_file);
end
endmodule

