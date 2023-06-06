# OmegaUp
# Expresion particular

a, b, c = gets.chomp.split(" ").map(&:to_i)

puts "#{"%.i"%((a + b)**c)**0.5}"
