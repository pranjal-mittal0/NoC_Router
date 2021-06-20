#NoCRouter

** The RTL Router Design in Verilog**
Characteristics

#RouterConfiguration

*)XY dimension order routing algorithm is used
*)West 1st turn to avoid deadlock
*)Wormhole Routing
*)To avoid head of line blocking 3 virtual channel with each having capacity to store 3 flits. i.e 1 input port can store 9 flits
*)Will have a Route computation Unit---RCU-> checks if current router and destination router is same. if so... destination reached and will assign this flit to local port as output port
        If not same, chec for destination in N,S,E,W port.
        #RCU has to make sure that flit gets a place in VC of next router. ie its responsibility or RCU to tell the flit to go west and sit in VC2
*) VC Arbitrator
    Assign the VC to the flit waiting for the same VC either by Round Robin or any other arbiterization
*)Switch Arbitrator
    Assigning the actual physical channel to the prospective assigned VC

