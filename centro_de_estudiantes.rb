a_favor = 0
en_contra = 0

while true
  v = gets.chomp.to_i

  if v == 0
    en_contra += 1
  elsif v == 1
    a_favor += 1
  else
    break
  end
end

puts (a_favor > en_contra)? "JORNADA APROBADA" : "JORNADA RECHAZADA"
