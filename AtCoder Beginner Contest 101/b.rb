n=gets.to_i
puts n%n.to_s.split('').map(&:to_i).inject{|s,i|s+i} == 0 ? "Yes" : "No"
