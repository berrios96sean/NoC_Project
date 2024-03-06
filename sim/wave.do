onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mvm1_tb/clk
add wave -noupdate /mvm1_tb/reset
add wave -noupdate /mvm1_tb/dispatcher0_ififo_wdata_r
add wave -noupdate /mvm1_tb/dispatcher0_ififo_wen_r
add wave -noupdate /mvm1_tb/dispatcher1_ififo_wdata_r
add wave -noupdate /mvm1_tb/dispatcher1_ififo_wen_r
add wave -noupdate /mvm1_tb/dispatcher2_ififo_wdata_r
add wave -noupdate /mvm1_tb/dispatcher2_ififo_wen_r
add wave -noupdate /mvm1_tb/dispatcher3_ififo_wdata_r
add wave -noupdate /mvm1_tb/dispatcher3_ififo_wen_r
add wave -noupdate /mvm1_tb/collector_ofifo_rdata
add wave -noupdate /mvm1_tb/collector_ofifo_ren
add wave -noupdate /mvm1_tb/dispatcher0_ififo_rdy
add wave -noupdate /mvm1_tb/dispatcher1_ififo_rdy
add wave -noupdate /mvm1_tb/dispatcher2_ififo_rdy
add wave -noupdate /mvm1_tb/dispatcher3_ififo_rdy
add wave -noupdate /mvm1_tb/collector_ofifo_rdy
add wave -noupdate /mvm1_tb/dispatcher0_ififo_wdata
add wave -noupdate /mvm1_tb/dispatcher0_ififo_wen
add wave -noupdate /mvm1_tb/dispatcher1_ififo_wdata
add wave -noupdate /mvm1_tb/dispatcher1_ififo_wen
add wave -noupdate /mvm1_tb/dispatcher2_ififo_wdata
add wave -noupdate /mvm1_tb/dispatcher2_ififo_wen
add wave -noupdate /mvm1_tb/dispatcher3_ififo_wdata
add wave -noupdate /mvm1_tb/dispatcher3_ififo_wen
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6042 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {15750 ps}
