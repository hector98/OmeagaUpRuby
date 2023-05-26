n = gets.chomp.to_i

matriz = []

i = 0
while i < n
  j = 0
  aux = []
  while j < n
    if i == j
      aux << "#{i+1} "
    else
      aux << "0 "
    end
    aux[j].display
    j += 1
  end
  puts
  matriz << aux
  i += 1
end

puts 

i = 0
while i < n
  j = 0
  aux = matriz[i].reverse
  while j < n
    aux[j].display
    j += 1
  end
  puts
  i += 1
end

