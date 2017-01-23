// LAB2, ex4: Binary Coded Decimal
module simple;
reg [0:3] B;

initial begin: stop_at
   #50 $stop;    
end

initial begin: Init
    B = 0;
    $display("Time B");  
    $monitor("  %0d %b", $time, B);
end

always begin: main_process
   #1 if(B == 9)
        B = 0;
   #1 B = B + 1; 
end

endmodule
