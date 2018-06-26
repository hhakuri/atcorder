N,C=gets.split(' ').map(&:to_i)
cs=[]
d=[]
C.times{|e| (d||=[])<<gets.split(' ').map(&:to_i)}
(2..(N+1)).each{|e| gets.split(' ').map(&:to_i).each_with_index{|ee, i| (cs[(e+i)%3]||=[])<<ee}}
cs.map!{|m| (0...C).map{|mm| m.inject(0){|sum,i| sum+d[i-1][mm] }}}
puts (0...C).to_a.permutation(3).to_a.map{|m| (0...3).inject(0){|sum, i| sum+cs[i][m[i]]} }.min
