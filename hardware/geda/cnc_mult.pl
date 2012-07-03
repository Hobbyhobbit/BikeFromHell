
# usage : $0 pcb-output.cnc > board-master-input.cnc

$x= 0.1;

for(<>) {
    $_ = 'X'.int($1*$x).'Y'.int($2*$x)."\r\n"
        if /X(\d+)Y(\d+)/;
    print $_;
}


