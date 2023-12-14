# OmegaUp
# Horas Extras

n = gets.chomp.to_i
salario = []

n.times do 
  horas = gets.chomp.to_i

  if horas <= 20
    salario << 0
  
  elsif horas > 40
    salario << ((horas - 40) * 50) + (40 * 35)

  else
    salario << (horas * 35)
  end
end

puts salario
