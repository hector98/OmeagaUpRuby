# OmegaUp
# Leyendo varios datos

n = gets.chomp.to_i
sumas = []

n.times do
  aux = gets.chomp.split(" ").map(&:to_i)
  sumas << aux[0] + aux[1]
end

puts sumas
