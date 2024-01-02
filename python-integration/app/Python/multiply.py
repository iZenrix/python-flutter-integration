import sys
import json

def penjumlahan(a, b):
    result = int(a) + int(b)
    return result

a = sys.argv[1]
b = sys.argv[2]

print(json.dumps(penjumlahan(a,b)))