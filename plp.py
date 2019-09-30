enc_consonantal = lambda s: 0 if len(s) < 2 else (s[0:2][0] not in 'aeiou' and s[0:2][1] not in 'aeiou') + enc_consonantal(s[1:])
maisQueKEnc = lambda s, k: [i for i in s.split(' ') if enc_consonantal(i) > k]
pelo_menos_k = lambda k, f, l: True if sum(f(i) for i in l) >= k else False
baralho = lambda naipes, ranks: [(i, j) for i in naipes for j in ranks]
semElementoK = lambda l, k: [l[i] for i in range(len(l)) if (i+1)!=k]
print(semElementoK([1,2,3], 2))