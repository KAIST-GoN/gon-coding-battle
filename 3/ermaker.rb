p (0..100).map {|v|(1..v).to_a.inject(1,:*)}.inject(:+)
