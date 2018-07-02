
n=gets.to_i
a=gets.split(' ').map(&:to_i)
sum = a.inject(:+)
a1 = a[0]
asp = [0,0,0]
min=9999

a[1..-3].each_with_index do |t,i|
  a1 += t
  tmp = (2*a1 - sum).abs
  if min>tmp
    asp[1] = i+1
    min=tmp
  end
end
a[0..asp[1]].each_with_index do |t,i|
  a1 += t
  tmp = (2*a1 - sum).abs
  if min>tmp
    asp[1] = i+1
    min=tmp
  end
end
a[asp[1]..-2].each_with_index do |t,i|
  a1 += t
  tmp = (2*a1 - sum).abs
  if min>tmp
    asp[1] = i+1
    min=tmp
  end
end

p asp
