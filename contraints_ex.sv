module ex_constraints();
class transaction;
rand bit[15:0]pkt_length;
constraint undersize {pkt_length<=16'd64;}
endclass:transaction

initial begin
int success;
transaction trans_h=new();
for(int i=0;i<16;i++)
begin
success=trans_h.randomize();
$display("pkt_length is %d",trans_h.pkt_length);
end
end

endmodule
