# MEX/1 OTMB Firwmare
   - localized dead time zone
   - CCLUT algorithm 
   - HMT, with anode and cathode hmt bits match
   - New trigger data format and DAQ data format

## firmware date and type
The firmware date is 2021-09-23 and the type is TypeA for non-ME11 OTMB.  This version is rolling back to 12bits comparator code. 

Use otmbfw_MEX1_typeA_20210923v2.tar.gz

## firmware revision code
The revision code is 0x402 if run3_daq_dataformat_enable is on
   - format version[3:0]: 0x2
   - major versoin[3:0] : 0x0 if run3_daq_dataformat_enable is on, otherwise is 0x1
   - minor version[4:0] : 0x2
   - revision code {format_version[3:0], major_version[3:0], minor_version[4:0]}

and if run3_daq_dataformat_enable = 0 and run2_revcode_enable = 1, then revision code would roll back to run2 legacy revcode=0x70
