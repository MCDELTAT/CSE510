// LAB2, ex3: Circular Left Shift
module simple;
reg [0:7] A;

initial begin: stop_at
   #50 $stop;    
end

initial begin: Init
    A = 1;
    $display("Time A");  
    $monitor("  %0d %b", $time, A);
end

always begin: main_process

  #1 A = {A[1:7], A[0]}; 
end

endmodule
