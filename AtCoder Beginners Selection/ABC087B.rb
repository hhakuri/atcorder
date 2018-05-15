a=gets.to_i
b=gets.to_i
c=gets.to_i
x=gets.to_i

n=0
(a+1).times do |d|
  (b+1).times do |e|
    (c+1).times do |f|
      n+=1 if x==d*500+e*100+f*50
    end
  end
end
puts n
