import os
import pyaes

## abre arquivo criptografado

file_name = "teste.txt.ransomwaretrolll"
file = open(file_name, "rb")
file_data = file.read()
file.close()

##chave para descriptografar

key = b"testeransomwares"
aes = pyaes.AESModeOfOperationCTR(key)
decrypt_data = aes.decrypt(file_data)

##remover o arquivo criptografado

os.remove(file_name)

##cria arquivo descriptografado

new_file = "teste.txt"
new_file = open(f'{new_file}',"wb")
new_file.write(decrypt_data)
new_file.close() 

