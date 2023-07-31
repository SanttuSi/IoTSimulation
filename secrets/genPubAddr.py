from eth_keys import keys
from eth_utils import decode_hex
# Open the private key file
pkFile = open('priv', 'r')
# Read contents, strip line endings and close the file
pkString = pkFile.readlines()[0].strip()
pkFile.close()
# Create byte array from the string
pkBytes = bytearray.fromhex(pkString)
# Use eth_keys to generate the public key
pk = keys.PrivateKey(pkBytes)
# Write public key to file
addrFile = open('addr', 'w')
addrFile.write(pk.public_key.to_checksum_address()[2:])
addrFile.close()
