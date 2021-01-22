onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /top_tb2/bias
add wave -noupdate /top_tb2/clk
add wave -noupdate /top_tb2/datain
add wave -noupdate /top_tb2/sum_result_out
add wave -noupdate -color Orange /top_tb2/RAM_out
add wave -noupdate -color Yellow /top_tb2/inicio_mult
add wave -noupdate -color Yellow /top_tb2/mult_result_out
add wave -noupdate -color Yellow /top_tb2/pronto_mult
add wave -noupdate -color {Yellow Green} /top_tb2/pronto_div
add wave -noupdate -color {Yellow Green} /top_tb2/div_result_out
add wave -noupdate -color Blue /top_tb2/y
add wave -noupdate /top_tb2/reset
add wave -noupdate /top_tb2/spronto_sum_out
add wave -noupdate /top_tb2/w1
add wave -noupdate /top_tb2/w2
add wave -noupdate /top_tb2/w3
add wave -noupdate /top_tb2/we
add wave -noupdate /top_tb2/x1
add wave -noupdate /top_tb2/x2
add wave -noupdate /top_tb2/x3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {36900733 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {10765957 ps} {11934157 ps}
