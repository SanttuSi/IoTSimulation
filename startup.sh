# Get arg 'n', set default to 3 if not provided
num=3
while getopts n: flag
do
    case "${flag}" in
        n) num=${OPTARG};;
    esac
done
# Check if prebuilt box exists 
BOX=iot.box
if test -f "$BOX"; then
    echo "$BOX exists."
else
    # Create prebuilt box
    cd iotBox
    ./buildIotBox.sh
    cd ..
fi
# Check if previous environment exists and destroy if it exists
FILE=Vagrantfile
if test -f "$FILE"; then
    echo "$FILE exists, removing and destroying previous env"
    vagrant destroy -f
    rm Vagrantfile
fi
# Generate new vagrantfile
python3 genVagrantFile.py $num
# Run vagrant
vagrant up
