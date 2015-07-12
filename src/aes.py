from Crypto.Cipher import AES
from Crypto import Random

BS = 16
pad = lambda s: s + (BS - len(s) % BS) * chr(BS - len(s) % BS)
unpad = lambda s: s[0:-ord(s[-1])]


class AESCipher:

    def __init__(self, key):
        self.key = key.decode("hex")

    def encrypt(self, raw):
        raw = pad(raw.decode("hex"))
        iv = Random.new().read(AES.block_size)

        cipher = AES.new(self.key, AES.MODE_CBC, iv)

        return (iv + cipher.encrypt(raw)).encode("hex")

    def decrypt(self, enc):
        enc = enc.decode("hex")
        iv = enc[:16]
        enc = enc[16:]

        cipher = AES.new(self.key, AES.MODE_CBC, iv)
        ptx = unpad(cipher.decrypt(enc))

        return ptx
