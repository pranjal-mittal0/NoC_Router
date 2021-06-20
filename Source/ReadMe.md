# NoCRouter

**An RTL Router Design in Verilog**

The on-chip router represents the key component in the NoC.  
The project requires to design and implement a simple NoC router that supports 3 Virtual Channels.  
The plan is to make a pipelined router with Six logical stages.
    # Buffer Write (BW)
    # Route Computation (RC)
    # VirtualChannel Allocation (VA)
    # Switch Allocation (SA)
    # Swtich Traversal (ST)
    # Link Traversal (LT)
RC and VA will be performed once per packet.
Body and tail flits inherit this  information from head flit.
The final design requires a complete TestBench for regressions.