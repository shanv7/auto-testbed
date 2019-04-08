sudo ip netns exec peer-1 ./chromium/src/out/active/quic_server --quic_response_cache_dir=/tmp/quic-data/www.example.org --certificate_file=net/tools/quic/certs/out/leaf_cert.pem --key_file=net/tools/quic/certs/out/leaf_cert.pkcs8

sudo ip netns exec peer-4 boon -r 0.1 -p eth-p4r2-0 -o ascii >> quicr.txt

sudo ip netns exec peer-4 ./chromium/src/out/Debug/quic_client --host=10.0.1.1 --port=6121 https://www.example.org/test10Mb.db

killall -9 bmon

sudo ./stop