num=3
while getopts n: flag
do
    case "${flag}" in
        n) num=${OPTARG};;
    esac
done

cp ../templates/genesis.json.template genesis.json

for i in $( seq 1 $num )
do
    # Generate a private key
    openssl ecparam -name secp256k1 -genkey -noout | openssl ec -text -noout > key
    # Extract the private key, remove the leading zero byte and pipe it into a file
    cat key | grep priv -A 3 | tail -n +2 | tr -d '\n[:space:]:' | sed 's/^00//' > priv
    # Generate a wallet address based on the private key, and write it into a file
    python3 genPubAddr.py
    # Move the generated private key to correct location
    mv priv keys/device$i
    # Add balance to the generated address
    printf "        \"%s\" : { \"balance\": \"5000000000000000\"},\n" "$(cat addr)" >> genesis.json
    # Move wallet address to correct location
    mv addr addresses/device$i
done
# remove the temporary key
rm key
# Add ending to the genesis.json file
printf "        \"634473DCE0d0e6e6EDD1c32e34f51f45fe4D2c42\" : { \"balance\": \"50000000000000000\"},\n"  >> genesis.json
printf "        \"bE139B8dc278fB4421141c35E3009ac30E40BBDD\" : { \"balance\": \"50000000000000000\"} } }"  >> genesis.json
