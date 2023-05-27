# OmegaUp
# Memorizando cadenas con poca memoria

n = gets.chomp.to_i

cadenas = []

while n > 0
  cadenas << gets.chomp
  n -= 1
end

m = gets.chomp.to_i
salida = ""

while m > 0
  busq = gets.chomp

  if cadenas.include?(busq)
    salida += "1\n"
  else
    salida += "0\n"
  end
  m -= 1
end

puts salida
