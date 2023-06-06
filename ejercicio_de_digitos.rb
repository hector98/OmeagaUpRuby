# OmegaUp
# Ejercicio de Digitos

out = ""
loop do
  n = gets.chomp.split("").map(&:to_i).reverse

  break if n.length < 4
  
  out += n.join("\n")
  out += "\nDigito mayor = #{n.max}"
end
puts "#{out} \nChau"
