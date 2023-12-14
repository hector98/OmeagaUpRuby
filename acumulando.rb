# OmegaUp
# Acumulando

n = gets.chomp.to_i
a, b = 0, 0

nums = gets.chomp.split(" ").map(&:to_i).each { |num| (num % 2 == 0)? a += num : b += num }

puts "#{a} #{b} #{((a + b)/n.to_f).truncate(1)}"


