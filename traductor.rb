# OmegaUp
# Traductor
input = gets.chomp
out = "if("

i = 0
while i < input.length
  if input[i] == '?'
    out += ")\n" + (" "*5)
  elsif input[i] == ':'
    out += ";\nelse\n" + (" "*5)
  else
    out += input[i]
  end
  i += 1
end

puts "#{out};"
