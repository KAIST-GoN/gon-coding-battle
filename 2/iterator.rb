pro = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
ty = %w(zero ten twenty thirty forty fifty sixty seventy eighty ninety)
pro[0] = ""
hun = 'hundred'
sum = 0
str = []
(0..9).each do |hu|
  if hu==0
    h = 0
  else
    h = pro[hu].length + hun.length
  end
  str <<  "#{(hu>0) ? "#{pro[hu]}#{hun}" : ""}"
  (1..9).each do |x|
    str << "#{(hu>0) ? "#{pro[hu]}#{hun}and" : ""}#{pro[x]}"
  end
 
  (10..19).each do |x|
    sum += pro[x].length
    str << "#{(hu>0) ? "#{pro[hu]}#{hun}and" : ""}#{pro[x]}"
  end
 
  (20..99).each do |x|
    sum += ty[x/10].length
    sum += pro[x%10].length
    str << "#{(hu>0) ? "#{pro[hu]}#{hun}and" : ""}#{ty[x/10]}#{pro[x%10]}"
  end
  sum += h * 100
end
str << 'onethousand'
 
str.map(&:length).inject(:+)
