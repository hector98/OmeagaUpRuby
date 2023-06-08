# OmegaUp
# Es primo

n = gets.chomp.to_i

unless n < 0
  if n != 1 or n == 2 and n < 3
    puts 1
  else
    i = 2
    r = 1
    while i < n
      if n % i == 0
        r = 0
        break
      else
        (i % 2 == 0)? i += 1 : i += 2
      end
    end
    puts (r == 1)? 1 : 0
  end
else
  puts "el número debe ser positivo"
end
