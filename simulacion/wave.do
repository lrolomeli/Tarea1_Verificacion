onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bcd/a2_in
add wave -noupdate -radix decimal -childformat {{{/bcd/bits[6]} -radix binary} {{/bcd/bits[5]} -radix binary} {{/bcd/bits[4]} -radix binary} {{/bcd/bits[3]} -radix binary} {{/bcd/bits[2]} -radix binary} {{/bcd/bits[1]} -radix binary} {{/bcd/bits[0]} -radix binary}} -expand -subitemconfig {{/bcd/bits[6]} {-radix binary -radixshowbase 0} {/bcd/bits[5]} {-radix binary} {/bcd/bits[4]} {-radix binary} {/bcd/bits[3]} {-radix binary} {/bcd/bits[2]} {-radix binary} {/bcd/bits[1]} {-radix binary} {/bcd/bits[0]} {-format Literal -radix binary}} /bcd/bits
add wave -noupdate /bcd/unidades
add wave -noupdate /bcd/decenas
add wave -noupdate /bcd/centenas
add wave -noupdate /bcd/a2_out
add wave -noupdate /bcd/unidades_l
add wave -noupdate /bcd/decenas_l
add wave -noupdate /bcd/centenas_l
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {1 ns}
