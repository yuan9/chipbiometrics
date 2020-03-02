for {set i 0} {$i < 16} {incr i} {
    set_logiclock -auto_size false -region rocell:myro[$i] -origin X10_Y[expr {$i*4+1}]
}
