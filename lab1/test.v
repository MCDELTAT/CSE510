//By Dan Hyde; August 9, 1995
//A first model in Verilog

module simple;
// Simple Register Transfer Level (RTL) example to demo Verilog.
// The register A is incremented by one.  Then first four bits of B is 
// set to "not" of the last four bits of A.  C is the "and" reduction
// of the last two bits of A.

//declare registers and flipflops
reg [0:3] A, B;
reg       C;

// The two "initial"s and "always" will run concurrently
initial begin: stop_at
   // Will stop the execution after 20 simulation units.
   #20; $stop;    
end

// These statements done at simulation time 0 (since no #k)
initial begin: Init
    // Initalize the register A.  The other registers have values of "x"
    A = 0;   
  
    // Display a header
    $display("Time   A         B    C");  
            
    // Prints the values anytime a value of A, B or C changes
    $monitor("  %0d %b %b %b ", $time, A, B, C);
end

//main_process will loop until simulation is over
initial begin: main_process

    // #1 means do after one unit of simulation time
    #1 A = 1;
    #1 B = -1;
    #1 if (B==15)
         $display("T\n");
       else
	 $display("F\n");
    #1;
    
end

endmodule
