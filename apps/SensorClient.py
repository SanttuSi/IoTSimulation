from http.server import BaseHTTPRequestHandler, HTTPServer
import time
import json
import os

hostName = "0.0.0.0"
serverPort = 8080

class IoTClient(BaseHTTPRequestHandler):
    def do_POST(self):
        try:
            content_length = int(self.headers['Content-Length'])
            body = self.rfile.read(content_length)
            json_object = json.loads(body)
            vehicle_address = json_object["address"]
            command = "sudo geth attach --exec \"eth.sendTransaction({to: \'" + vehicle_address +"\', from: eth.accounts[0], value: 2500})\" /home/vagrant/node/geth.ipc"
            os.system(command)
            self.send_response(200)
            self.end_headers()
            self.wfile.write(bytes("0x634473DCE0d0e6e6EDD1c32e34f51f45fe4D2c42", 'utf-8'))
        except:
            self.send_response(404)
            self.end_headers()
    
webServer = HTTPServer((hostName, serverPort), IoTClient)
print("Server started http://%s:%s" % (hostName, serverPort))

try:
    webServer.serve_forever()
except KeyboardInterrupt:
    pass

webServer.server_close()
print("Server stopped.")
