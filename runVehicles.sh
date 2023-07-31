num=3
for i in $( seq 1 $num )
do
   wallet=`printf "0x%s" "$(cat secrets/addresses/device$i)"`
   vagrant ssh device$i -c "tmux new-session -d -s test_session \"python3 /vagrant/apps/SimulatedVehicleClient.py $wallet device$i\""
done
