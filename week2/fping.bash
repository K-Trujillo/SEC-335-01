# !/bin/bash/

ip="10.0.5."

for i in {2..50}
do
	#fping -c1 -a -x "${ip}$i" | grep "min/avg/max"
	fping -r1 "${ip}$i" | grep "is alive" |  grep -v "ICMP Redirect*" | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" >> sweep2.txt
	#fping -r1 "${ip}$i" | awk 'match($0, "is alive"); print ("[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")'
done
