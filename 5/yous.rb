def succeeding str
	result = str.gsub(' ', '')
	str.chars.each_index.select {|v| str[v] == ' ' }.reverse_each do |idx|
		result.insert(str.length - idx - 1, ' ')
	end
	result
end
puts succeeding "succeeding you father"
