# OmegaUp
# Areas de figuras

l = gets.chomp.to_i
b, a = gets.chomp.split(" ").map { |n| n.to_i }
lt, at = gets.chomp.split(" ").map { |n| n.to_i }

puts "Cuadrado : #{l**2} m^2"
puts "Rectangulo : #{b*a} m^2"
puts "Triangulo : #{(lt * at)/2.0} m^2"
