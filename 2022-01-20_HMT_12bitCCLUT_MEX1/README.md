# MEX/1 OTMB Firwmare
   - localized dead time zone
   - CCLUT algorithm 
   - HMT, with anode and cathode hmt bits match
   - New trigger data format and DAQ data format

## firmware date and type
The firmware date is 2022-01-22 and the type is TypeA for non-ME11 OTMB.  


This version reverted one old changed that was designed to solve a bug in memory control. But after that we observed invalid CLCTs readout in DAQ path.  This new firmware version is to test whether this change induced the bug. 

## firmware revision code
The revision code is 0x402 if run3_daq_dataformat_enable is on
   - format version[3:0]: 0x2
   - major versoin[3:0] : 0x0 if run3_daq_dataformat_enable is on, otherwise is 0x1
   - minor version[4:0] : 0x3
    	- 0x2 is to include ALCT in cathoe HMT tagged window and roll back to 12bits comparator code version CCLUT
        - 0x3 is to include cathode HMT and anode HMT bits, 2 bits for each
   - revision code {format_version[3:0], major_version[3:0], minor_version[4:0]}

and if run3_daq_dataformat_enable = 0 and run2_revcode_enable = 1, then revision code would roll back to run2 legacy revcode=0x70
