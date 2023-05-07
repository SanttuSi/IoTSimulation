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
    # Generate the private keys
    openssl ecparam -name secp256k1 -genkey -noout | openssl ec -text -noout > key
    # Extract the private key and remove the leading zero byte
    cat key | grep priv -A 3 | tail -n +2 | tr -d '\n[:space:]:' | sed 's/^00//' > priv
    python3 genPubAddr.py
    mv priv keys/device$i
    printf "        \"%s\" : { \"balance\": \"5000000000000000\"},\n" "$(cat addr)" >> genesis.json
    mv addr addresses/device$i
done

rm key
printf "        \"bE139B8dc278fB4421141c35E3009ac30E40BBDD\" : { \"balance\": \"5000000000000000\"} } }"  >> genesis.json
