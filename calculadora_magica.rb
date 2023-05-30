# OmegaUp
# Calculadora Magica

def factorial(n)
  f = 1
  i = 2
  while i <= n
    f *= i
    i += 1
  end
  return f
end

def fibonacci(lon, ant = 0, act = 1)
  fib  = "#{ant} #{act} "
  ant += 1
  while lon > 1
    fib += "#{act} "
    ant, act = act, ant+act
    
    lon -= 1
  end
  return fib
end

n1, n2 = gets.chomp.split(" ").map { |n| n.to_i }
op = gets.chomp.to_i

if op == 1
  puts "¡Expelliarmus! ¡El resultado es: #{n1**n2}!"
elsif op == 2
  puts "¡Alohomora! ¡La puerta mágica se abre y muestra el resultado: #{n2**n1}!"
elsif op == 3
  puts "¡Expecto Patronum! ¡El factorial de #{n1} es: #{factorial(n1)}!"
elsif op == 4
  puts "¡Wingardium Leviosa! Los números flotan en el aire: #{fibonacci(n2)}"
end
