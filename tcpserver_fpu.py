import socket

TCP_IP = '192.168.0.73'
TCP_PORT = 7777
BUFFER_SIZE = 1024

print(f'Abrindo socket em {TCP_IP}:{TCP_PORT}')

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.bind((TCP_IP, TCP_PORT))
s.listen(1)

print('Esperando conexão do cliente...')
conn, addr = s.accept()
print(f'Cliente conectado: {addr}')

print('Operações suportadas (+, -, /, *)')
print('Exemplo: 3.82 * 372.82')

while 1:
    cmd = input("Operação: ")
    cmd_bytes=bytearray()
    cmd_bytes.extend(map(ord,cmd))

    conn.send(cmd_bytes)

    data = conn.recv(BUFFER_SIZE)
    if not data:
        print('Operação invalida')
    else:
        print(f'Resultado: {data.decode("utf-8")}')
conn.close()