onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mvm1_tb/clk
add wave -noupdate /mvm1_tb/reset
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
add wave -noupdate /mvm1_tb/DUT/dispatcher0/ififo_rdy
add wave -noupdate /mvm1_tb/DUT/dispatcher0/fifo_full_signal
add wave -noupdate /mvm1_tb/DUT/dispatcher0/fifo_almost_full_signal
add wave -noupdate /mvm1_tb/DUT/dispatcher0/fifo_empty_signal
add wave -noupdate /mvm1_tb/DUT/dispatcher0/fifo_rdata
add wave -noupdate /mvm1_tb/DUT/dispatcher0/fifo_wdata
add wave -noupdate /mvm1_tb/DUT/dispatcher0/tx_tvalid
add wave -noupdate /mvm1_tb/DUT/dispatcher0/tx_tdata
add wave -noupdate /mvm1_tb/DUT/dispatcher0/tx_tready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1022454 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 290
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
WaveRestoreZoom {170213 ps} {2359463 ps}
