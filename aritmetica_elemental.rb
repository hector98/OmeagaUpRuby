# OmegaUp
# Aritmetica Elemental

n1 = gets.chomp.split("").map(&:to_i).reverse # numero uno en partes
n2 = gets.chomp.split("").map(&:to_i).reverse # numero dos en partes

# comprobamos que los numero tengan la misma longitud, si no es asi
# agregamos ceros
if n1.length > n2.length
  n2 += ("0"*(n1.length - n2.length)).split("").map(&:to_i)
elsif n2.length > n1.length
  n1 += ("0"*(n2.length - n1.length)).split("").map(&:to_i)
end


uno = 0
aux = 0

# recoremos cada elemento de los dos numeros
n1.length.times do |i|
  if n1[i] + n2[i] + aux > 9
    uno += 1
    aux = 1
  else
    aux = 0
  end
end

puts uno
