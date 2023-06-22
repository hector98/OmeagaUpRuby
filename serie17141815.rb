# OmegaUp
# Serie 17141815

n = gets.chomp.to_i

if n > -1
  i = 2
  k = 17
  r = "17 "
  
  while i <= n
    if i % 2 == 0
      k -= 3
    else
      k += 4
    end
    r += k.to_s + " "
    i += 1
  end

  puts (n == 0)? "" : r
else
  puts "El número debe de ser positivo"
end
