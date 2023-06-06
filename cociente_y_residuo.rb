# OmegaUp
# Cociente & Residuo

n1 = gets.chomp.to_i
n2 = gets.chomp.to_i

if n1 >= 1 and n2 >= 1 and n1 <= 100000 and n2 <= 100000
  puts "El cociente de la division de #{n1}/#{n2} es #{n1/n2}"
  puts "El residuo de la division de #{n1}/#{n2} es #{n1%n2}"
end
