# OmegaUp
# Comparaciones

nums = gets.chomp.split(" ").map(&:to_i)

eql = 0
aux =0
i = 0
j = 1

while i < nums.length - 1
  while j < nums.length
    if nums[i] == nums[j]
      aux += 1
    end
    j += 1
  end
  eql = aux if aux > eql
  aux = 0
  i += 1
  j = i + 1
end

if eql == 4
  puts "Identicamente iguales"
  
elsif eql == 3
  puts "Muy iguales"

elsif eql == 2
  puts "Iguales"

elsif eql == 1
  puts "Diferentes"

else
  puts "Muy diferentes"
end
