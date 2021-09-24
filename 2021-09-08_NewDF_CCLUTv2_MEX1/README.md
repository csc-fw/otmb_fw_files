# MEX/1 OTMB Firwmare
   - localized dead time zone
   - CCLUT algorithm 
   - HMT
   - New trigger data format and DAQ data format

## firmware date and type
The firmware date is 2021-09-08 and the type is TypeA for non-ME11 OTMB.  This version is to fix the CLCT issue in LCT construction and HMT issue.

## firmware revision code
The revision code is 0x401 if run3_daq_df is on
   - format version[3:0]: 0x2
   - major versoin[3:0] : 0x0 if run3_daq_df is on, otherwise is 0x1
   - minor version[4:0] : 0x1
   - revision code {format_version[3:0], major_version[3:0], minor_version[4:0]}