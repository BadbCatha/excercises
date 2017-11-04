n = 1
t = []
until n == 0
  n = gets.to_i
  t = t +[n]
end
t = t.sort!
if t[0] < 0
  puts "Wystąpila liczba ujemna"
end
i = t.length
if t[i-1] > 0
  puts "Wystąpila liczba dodatnia"
end

#puts t
#puts izz