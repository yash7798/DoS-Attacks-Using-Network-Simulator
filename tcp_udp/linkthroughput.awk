BEGIN {
recv=0;
gotime = 1;
time = 0;
time_interval=1;
}
#body
{
    event = $1
    time = $2
    node_id = $4
    pktsize = $6
    pktType = $5
	if(time > gotime)
	{
		print gotime, (pktsize * recv * 8.0)/1000; #packet size * ... gives results in kbps
 		gotime+= time_interval;
  		recv=0;
  	}
	if (( event == "r") && (( pktType == "tcp" )||(pktType == "udp")) && (node_id == 3))
	{
 		recv++;
	}

} #body
END {
;
}
#============================= Ends ============================

