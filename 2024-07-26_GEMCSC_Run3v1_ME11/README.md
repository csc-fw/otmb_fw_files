# GEMCSC ME1/1 OTMB Firwmare
   - localized dead time zone
   - CCLUT algorithm 
   - GEMCSC algorithm
   - HMT, with anode and cathode hmt bits match
   - New trigger data format and DAQ data format
   - frontend LED invp is changed to GEM-ALCT-CLCT match

## firmware date and type
The firmware date is 2024-07-26. TypeC and type D OTMB firmware are uploaded here.   Type C for ME11 OTMB in plus endcap and type D for minus endcap.  



The main change for this version is followings:
   - fix the CLCT sorting for ME11. The bending direction is not taken into account when sorting CLCTs in each BX



## firmware revision code
The revision code is 0x602 if run3_daq_dataformat_enable is on
   - format version[3:0]: 0x3
   - major versoin[3:0] : 0x0 if run3_daq_dataformat_enable is on, otherwise is 0x1
   - minor version[4:0] : 0x3
    	- 0x2 is to include ALCT in cathoe HMT tagged window and roll back to 12bits comparator code version CCLUT
        - 0x3 is to include cathode HMT and anode HMT bits, 2 bits for each
   - revision code {format_version[3:0], major_version[3:0], minor_version[4:0]}

and if run3_daq_dataformat_enable = 0 and run2_revcode_enable = 1, then revision code would roll back to run2 legacy revcode=0x70
