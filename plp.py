from socket import *
from threading import *

HOST = '127.0.0.1' #host name
PORT = 7777 #comm port 

#1) Abre dois terminais
#2) Roda esse código em um
#3) Conecta nele com telnet localhost 7777 no outro
#4) Daí roda e vai testando

class Server(Thread):
	
	def __init__(self):
		Thread.__init__(self)
		self.server = socket()
		self.server.bind((HOST, PORT))
		self.server.listen(5)
		self.client, addr = self.server.accept()

	def process_cmd(self, cmd):
		reply = 'Done.\n'
		return reply.encode()

	def run(self):
		print('Server started.')
		while True:
			try:
				text = self.client.recv(1024)
				print('Received')
				if not text:
					break
				reply = self.process_cmd(text)
				self.client.sendall(reply)
			except:
				print('Exception. Closed.')
				break
		self.client.close()

if __name__ == '__main__':
	app = Server().start()