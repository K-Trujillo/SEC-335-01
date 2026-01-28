# !/bin/bash/

ip="10.0.5."

for i in {2..50}
do
	nmap -n -vv -sn "${ip}$i" -oG - | awk '/Up$/{print $2}' >> sweep3.txt
        #fping -r1 "${ip}$i" | awk 'match($0, "is alive"); print ("[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}")'
done
