a = gets.chomp
a.gsub!('eraser', "")
a.gsub!('erase', "")
a.gsub!('dreamer', "")
a.gsub!('dream', "")
puts a.empty? ? 'YES' : 'NO'
