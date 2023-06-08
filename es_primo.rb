# OmegaUp
# Es primo

n = gets.chomp.to_i

unless n < 0
  if (n != 1 and n % ((n+1)/2) != 0 and n % 9 != 0) or n == 2
    puts 1
  else
    puts 0
  end
else
  puts "el número debe ser positivo"
end
