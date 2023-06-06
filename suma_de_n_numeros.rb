# OmegaUp
# Suma de N numeros

suma = 0
n = gets.chomp.to_i
nums = gets.chomp.split(" ").map(&:to_i).each { |n| suma += n }
puts suma
