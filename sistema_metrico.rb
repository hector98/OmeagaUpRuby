# Omegaup 
# Sistema Metrico

m = gets.chomp.to_f

m = m.to_i if m.to_i == m
km = m / 1000.0
km = km.to_i if km.to_i == km
cm = m * 100
cm = cm.to_i if cm.to_i == cm
mm = m * 1000
mm = mm.to_i if mm.to_i == mm

puts "#{m} m = #{cm} cm = #{mm} mm = #{km} km."
