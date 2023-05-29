# OmegaUp
# Fiesta de numeros

n = gets.chomp.to_i

if n >= 1 and n <= 1000
  i = 1
  while i <= n
    if i % 2 == 0
      puts "Invitado ##{i}: ¡Felicidades! Eres el número #{i} y estás invitado a la Pista de Baile."
    else
      puts "Invitado ##{i}: ¡Felicidades! Eres el número #{i} y estás invitado a la Zona de Juegos."
    end
    i += 1
  end
end
