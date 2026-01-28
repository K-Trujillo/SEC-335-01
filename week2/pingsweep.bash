# !/bin/bash/

ip="10.0.5"

for i in {2..50}
do
	ping -c 1 -W 1 "${ip}.$i" | grep "64 bytes from" | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" >> sweep.txt
done
