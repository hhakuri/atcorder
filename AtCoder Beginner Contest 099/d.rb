N,C=gets.split(' ').map(&:to_i)
d=[]
c=[]
dd=[]
(1..C).each{|e| d[e] = [nil] + gets.split(' ').map(&:to_i)}
(1..N).each{|e| c[e] = [nil] + gets.split(' ').map(&:to_i)}
cc = [[],[],[]]
(1..N).each do |x|
  (1..N).each do |y|
    case (x+y)%3
    when 0
      cc[0] << c[y][x]
    when 1
      cc[1] << c[y][x]
    when 2
      cc[2] << c[y][x]
    end
  end
end
3.times do |e|
  dd[e] = []
  (1..C).each do |t|
    dd[e][t]=0
    cc[e].each do |ee|
      dd[e][t] += d[ee][t]
    end
  end
end
puts (1..C).to_a.permutation(3).to_a.map { |m| (0...3).inject(0) {|sum, i| sum+dd[i][m[i]]} }.min
