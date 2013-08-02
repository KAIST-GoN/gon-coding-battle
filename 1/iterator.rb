#From http://letterfrequency.org/#computer-keyboard-key-frequency
RANK = " etaoinsrhldcu\nmfpgwyb,.vk()_;\"=\'-x/0$*1j:{}>q[]2z!<?3+5\\4\#@|6&987%^~`"
hex = "1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736"
puts (0..255).map{|ch| 
  hex.gsub(/../){|x| (x.hex^ch).chr}
  }.min_by{|st| 
    st.each_char.map{|c| RANK.index(c.downcase)||9999}.inject(:+)
  }
