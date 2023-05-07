from eth_keys import keys
from eth_utils import decode_hex

pkFile = open('priv', 'r')
pkString = pkFile.readlines()[0].strip()
pkFile.close()
pkBytes = bytearray.fromhex(pkString)
pk = keys.PrivateKey(pkBytes)

addrFile = open('addr', 'w')
addrFile.write(pk.public_key.to_checksum_address()[2:])
addrFile.close()
