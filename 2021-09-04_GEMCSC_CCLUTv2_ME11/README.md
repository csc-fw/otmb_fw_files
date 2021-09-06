# ME1/1 OTMB Firwmare
   - localized dead time zone
   - CCLUT algorithm 
   - HMT
   - New trigger data format and DAQ data format
   - GEMCSC algorithm

## firmware date and type
The firmware date is 2021-09-04 and the type is TypeC for ME11 OTMB in plus endcap. 

## revision code 
The revision code is 0x601 if run3_daq_df is on
   - format version: 0x3
   - major versoin: 0x0 if run3_daq_df is on, otherwise is 0x1
   - minor version: 0x1
   - revision code {format_version[3:0], major_version[3:0], minor_version[4:0]}
