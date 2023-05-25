# OmegaUp Busqueda en conjunto

n = gets.chomp.to_i
conjunto = []
output = ""

while n > 0
  op, x = gets.chomp.split(" ").map { |n| n.to_i }
  if op == 1
    conjunto << x
  else
    conjunto.include?(x)? output += "Si\n" : output += "No\n"
  end
  n -= 1
end

puts output
