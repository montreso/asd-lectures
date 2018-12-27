from math import sqrt
from decimal import *

def printBinary(S):
  tot = 0
  for char in S:
    tot = 256*tot + ord(char)
    #print("0"+str(bin(ord(char)))[2:], " ", end="")
  
  valore = (Decimal(sqrt(5))-1)/2 * Decimal(tot)
  parteintera = int(valore)
  partedecimale = Decimal(valore-parteintera)
  print("= ", tot, valore, parteintera, partedecimale, partedecimale*65536)

printBinary("Alberto")
printBinary("Alessio")
printBinary("Cristian")


