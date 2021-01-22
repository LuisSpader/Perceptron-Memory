from bitstring import BitArray #instalada com pip
import itertools

def bin2int(a): #função converte binário para inteiro
    b = BitArray(bin=a)
    return b.int

def int2bin(a, length): #função para converter int para binário
    b = BitArray(int=a, length = length) # lenght eh o tamanho da string binaria
    return b.bin

BITS_ENTRADA = 8
BITS_SAIDA = 8

input_f = open("entradas.txt","w")
output_f = open("saidas_ref.txt","w")

testes_x1 = range(-12, 13) #vai de -12 a 12
testes_x2 = range(-12, 13) #vai de -12 a 12
testes_x3 = range(-12, 13) #vai de -12 a 12

for a,b,c in itertools.product(testes_x1 ,testes_x2, testes_x3): #faz todas as combinações dos ranges
    res = a + b + c #minha saida de referencia // está em inteiros (formato decimal)
    
    bin_a = int2bin(a, BITS_ENTRADA) #tradução para formato binário
    bin_b = int2bin(b, BITS_ENTRADA) #(array_inteiros,length)
    bin_res = int2bin(res, BITS_SAIDA) #(array_i    nteiros,length)
    
    print(f'{bin_a} {bin_b}', file = input_f)   #entradas escritas num arquivo
    print(bin_res, file = output_f)             #saídas escritas em outro arquivo

input_f.close()
output_f.close()
