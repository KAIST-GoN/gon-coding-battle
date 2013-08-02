d=['1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'].pack('H*')
puts 256.times.map {|k| d.each_byte.map{|c|c^k}.map(&:chr).join}.select {|s| s=~/^[[:print:]]*$/}.max_by{|s|s.count ' '}
