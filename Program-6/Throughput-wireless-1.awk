# AWK Script for Packet Delivery Calculation for OLD Trace Format

BEGIN {
	sent=0;
	received=0;
}
{
	if($1=="s" && $4=="AGT")
	{
		sent++;
	}
	else if($1=="r" && $4=="AGT")
	{
		received++;
		printf "%s\n", $0;
	}
}
END {
	printf " Packet Sent:%d",sent;
	printf "\n Packet Received:%d",received;
	printf "\n Packet Delivery Ratio:%.2f\n",(sent/received)*100;
}
