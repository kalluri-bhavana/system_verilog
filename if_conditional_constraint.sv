
module if_constraintc_ex();
class transaction;
rand bit Vlantag;
bit mode;
constraint tag{if(mode==1'b1)
                  Vlantag<96;
               else if(mode==1'b0)
                   Vlantag<1248;}
endclass:transaction
transaction trans_h;
initial begin
trans_h=new();
int success;
trans_h.mode=1'b1;
success=trans_h.randomize();
$display("tag is %d",trans_h.Vlantag);
end
endmodule
