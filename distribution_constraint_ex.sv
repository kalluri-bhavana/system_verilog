module distribution_constraint_ex();
class transaction;
rand int Vlantag;
constraint tag{Vlantag dist{7:=5,[11:20]:=3,[26:30]:/5};}
endclass:transaction

transaction trans_h;
initial begin
int success;
trans_h=new;
success=trans_h.randomize();
$display("Vlantag is %d",trans_h.Vlantag);
end
endmodule

