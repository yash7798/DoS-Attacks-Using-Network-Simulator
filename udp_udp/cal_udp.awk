BEGIN {
normal=0;
attack=0;
}
{
parameter1=$1
parameter2=$2
parameter3=$3
parameter4=$4
parameter5=$5
parameter6=$6
parameter8=$8
parameter9=$9
parameter10=$10
parameter11=$11
parameter12=$12
if (parameter1=="r" && parameter5=="udp" && parameter4==2 && parameter3==0)
normal++;

if (parameter1=="r" && parameter5=="udp" && parameter4==2 && parameter3==1)
attack++;

printf("\n%f %d",parameter2,attack);
}
END {
#printf("\n\n\nnumber of pkts received :%d",number_of_received);
}

