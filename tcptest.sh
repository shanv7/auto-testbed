sudo ipnetns exec peer-1 ping -c50 10.0.4.4 >> results.txt
sudo ipnetns exec peer-1 iperf -s -p 5866 &
sudo ipnetns exec peer-4 iperf -c 10.0.1.1 -p 5866 -n 512m >> results.txt
sudo ipnetns exec peer-4 iperf -c 10.0.1.1 -p 5866 -n 512m >> results.txt
sudo ipnetns exec peer-4 iperf -c 10.0.1.1 -p 5866 -n 512m >> results.txt
sudo ./stop