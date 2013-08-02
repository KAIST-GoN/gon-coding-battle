require 'numbers_and_words'
puts (1..1000).map{|n| n.to_words(hundreds_with_union: true).gsub(/\W/, '').size}.inject(:+)
