# OmegaUp
# Juego de letras

letters = {
  "P" => 0,
  "O" => 9,
  "L" => 9,
  "Q" => 1,
  "A" => 1,
  "Z" => 1,
  "W" => 2,
  "S" => 2,
  "X" => 2,
  "E" => 3,
  "D" => 3,
  "C" => 3,
  "R" => 4,
  "F" => 4,
  "V" => 4,
  "T" => 5,
  "G" => 5,
  "B" => 5,
  "Y" => 6,
  "H" => 6,
  "N" => 6,
  "U" => 7,
  "J" => 7,
  "M" => 7,
  "I" => 8,
  "K" => 8

}

string = gets.chomp.upcase
i = 0
sum = 0
while i < string.length
  sum += letters[string[i]]
  i += 1
end
puts sum
