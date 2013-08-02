hex_code = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"
256.times.each do |ch|
	puts $1 if hex_code.gsub(/../) {|v| (v.hex ^ ch).chr } =~ /(\A[\w ,'"]+\Z)/
end
