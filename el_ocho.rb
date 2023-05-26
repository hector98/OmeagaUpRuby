n_num = 0
n_pares = 0

while true
  n = gets.chomp.to_i
  n_num += 1
  if n % 2 == 0
    n_pares += 1
  end

  break if n == 8

end

puts "#{n_num} #{n_pares}"
