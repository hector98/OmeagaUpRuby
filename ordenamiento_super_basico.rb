# OmegaUp
# Ordenamiento super basico

n = gets
nums = gets.chomp.split(" ").map(&:to_i)

puts nums.sort.join(" ")
