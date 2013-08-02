def succeeding str
	result = str.gsub(' ', '')
	str.chars.each_index.select {|v| str[v] == ' ' }.each do |idx|
		result.insert(-idx - 1, ' ')
	end
	result
end
puts succeeding "succeeding you father"

# r=(s=gets).tr' ','';s.size.times{|i|r[-i-1,1]+=' 'if s[i]<33};puts r
