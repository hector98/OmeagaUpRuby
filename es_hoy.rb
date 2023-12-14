# OmegaUp
# Es hoy

x = gets.chomp
a = 0
b = 0

n = gets.chomp.split(" ").map(&:to_i).each { |num| a += num}
m = gets.chomp.split(" ").map(&:to_i).each { |num| b += num}

puts "#{a} #{b}"
