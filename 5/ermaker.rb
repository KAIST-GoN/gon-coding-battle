d="succeeding you father"
v=d.each_char.map.to_a
y=d.delete ' '
while i = v.index{|v| v==' '}
  v[i] = '.'
  y.insert -i-1, ' '
end
puts y
