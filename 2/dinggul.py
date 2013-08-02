#zero, one, two, three, four, five, six, seven, eight, nine, ten
#eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
#twenty, thirty, forty, fifty, sixty, seventy, eighty, ninety
d = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8] + [0] * 100
d[20], d[30], d[40], d[50], d[60], d[70], d[80], d[90] = 6, 6, 5, 5, 5, 7, 6, 6
d = d[:21] + [d[i/10*10] + d[i%10] for i in range(21,100)]
n = [d[i/100] + d[i%100] for i in range(1, 1000)]
print sum(n) + 900 * 10 - 9 * 3 + 11
