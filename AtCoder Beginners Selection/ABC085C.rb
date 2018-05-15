n, y=gets.split(' ').map(&:to_i)
a = y/10000
b = (y-a*10000)/5000
c = (y-a*10000-b*5000)/1000
d = y/1000
puts a+b+c<=n && n<=d ? "#{a} #{b} #{c}" : "-1 -1 -1"
