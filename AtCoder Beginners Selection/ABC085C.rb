=begin
n, y=gets.split(' ').map(&:to_i)
a = y/10000
b = (y-a*10000)/5000
c = (y-a*10000-b*5000)/1000
d = y/1000
puts a+b+c<=n && n<=d ? "#{a} #{b} #{c}" : "-1 -1 -1"
=end

n, y=gets.split(' ').map(&:to_i)
r = false
(n+1).times do |a|
  (n+1).times do |b|
    (n+1).times do |c|
      break if r
      next if a+b+c != n
      if a*10000+b*5000+c*1000 == y
        r = true
        puts [a, b, c].join(' ')
      end
    end
  end
end
puts '-1 -1 -1' unless r
