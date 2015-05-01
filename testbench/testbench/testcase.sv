`ifndef TESTCASE
`define TESCASE
//$display("testcase was read");

class reduced_trans extends trans;
    constraint mem_const {
        //send instractions without store in memary
        opcode != STH;
        opcode != STL;
        opcode != LDL;
        opcode != LDH;
    }
    
endclass    



program cpu_no_ld_st_test (wishbone_if instr_cpu_intf, wishbone_if data_cpu_intf, control_if cont_cpu_intf);
    
    environment env;
    reduced_trans r_trans;
   
   initial begin
        $display("TESTCASE : START is on %0t",$time);
        r_trans = new();            
        env = new(instr_cpu_intf,data_cpu_intf,cont_cpu_intf);
        env.build;
        env.run;              
   
        $display("TESTCASE : DONE  %0t", $time);
        $finish;
   end
   
    
    
endprogram

/*
[amnt_inst] bit[15:0] mem_instr;
$fopen(asm_instr.bin,rb);
$readmemb(asm_instr.bin,mem_instr);


*/






`endif
