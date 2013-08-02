factorial = Enumerator.new do |yielder|
	idx = 0
	mult = 1
	loop do
		yielder.yield mult
		mult *= idx += 1
	end
end
puts factorial.first(101).reduce(:+)
