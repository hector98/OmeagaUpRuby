# OmegaUp
# A. Recompensa Merecida

n = gets.chomp.to_i
m = gets.chomp.to_i

if n >= 1 and n <= 10 and m >= 1 and m <= 500
  if m % n == 0
    puts m/n
  elsif m < n
    puts 0
  elsif ((m % n)% 2 == 0)
    puts (m / n) + (m % n)
  end
end
