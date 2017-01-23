// LAB2, ex2: every eighth one
module simple;
reg B;

initial begin: stop_at
   #50 $stop;    
end

initial begin: Init
    B = 0;
    $display("Time B");  
    $monitor("  %0d %b", $time, B);
end

always begin: main_process
   #1 B = 0;
   #7 B = 1; 
end

endmodule
