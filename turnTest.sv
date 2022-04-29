module turnTest();
logic select;
logic player;
logic [1:0] x;
logic rst;

memTurn m1(.rst(rst),.select(select), .player(player), .x(x));
initial begin
select=0;
player=0;

#10;

select=1;
#10;
select=0;
#10;
select=1;
#10;
select=0;
#10;
select=1;
#10;
select=0;
#10;
end
endmodule