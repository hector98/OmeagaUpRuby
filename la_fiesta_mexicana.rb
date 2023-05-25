# OmegaUp problema 17601. La fiesta Mexicana

class LaFiestaMexicana
  attr_reader :people

  def initialize(n, m)
    @people = n - m
  end

  def people
    if @people < 0
      "#{@people}\nLO SIENTO NO ALCANZA LA COMIDA"
    elsif @people > 0 
      "#{@people}\nTIENE UN TUPPER PARA LLEVAR?"
    else
      "#{@people}\nESTAMOS COMPLETOS"
    end 
  end
end

people = gets.chomp.split(" ").map { |n| n.to_i }
if people.length == 1
  people << gets.chomp.to_i
end
la_fiesta = LaFiestaMexicana.new(people[0], people[1])
puts la_fiesta.people
