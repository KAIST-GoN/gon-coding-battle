v="succeeding you father".each_char.map.to_a
y=v.dup
y.delete(' ')
while true do
  i = v.index{|v| v==' '}
  break unless i
  v[i] = '.'
  y.insert(-i-1,' ')
end
puts y.join
