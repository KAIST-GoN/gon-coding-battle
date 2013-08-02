# can be done in one line, but python f**king long
a='1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'.decode('hex')
q=[[chr(ord(c)^i) for c in a] for i in range(255)]
w=[len([p for p in n if p in 'etaoin']) for n in q]
print ''.join(max(zip(w,q))[1])

