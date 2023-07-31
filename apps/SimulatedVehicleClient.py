import requests
import sys
import time

walletAddr = sys.argv[1]
hostname = sys.argv[2]
print (walletAddr)
print(hostname)
url = 'http://10.1.0.3:8080'
data = {'address': walletAddr}
started = 0
def post():
	x = requests.post(url, json = data)
	print(x.text)
while started == 0:
	try:
		post()
		started = 1
	except:
		continue
times=[]
for i in range(10):
	start = time.time()
	try:
		post()
		end = time.time()
		times.append(end-start)
	except:
		times.append(0.0)
path = "/vagrant/apps/" + hostname
print(path)
outputFile = open(path,'w')
outputFile.write(str(times))
outputFile.close()
