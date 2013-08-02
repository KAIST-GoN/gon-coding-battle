d="succeeding you father"
v=d.each_char.map.to_a
y=d.delete ' '
v.map.with_index.select {|v,i|v==' '}.map{|v|v[1]}.each {|i| y.insert -i-1, ' '}
puts y
