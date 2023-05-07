num=3
while getopts n: flag
do
    case "${flag}" in
        n) num=${OPTARG};;
    esac
done

BOX=iot.box
if test -f "$BOX"; then
    echo "$BOX exists."
else
    cd iotBox
    ./create.sh
    cd ..
fi

FILE=Vagrantfile
if test -f "$FILE"; then
    echo "$FILE exists, removing and destroying previous env"
    vagrant destroy
    rm Vagrantfile
fi

python3 genVagrantFile.py $num
vagrant up