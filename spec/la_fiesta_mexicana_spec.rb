require 'rspec'
require_relative '../la_fiesta_mexicana.rb'

RSpec.describe LaFiestaMexicana do
  describe "#people" do
    it "mas personas de las invitadas" do
      c = LaFiestaMexicana.new(50, 60)
      r = c.people
      expect(r).to eq("#{-10}\nLO SIENTO NO ALCANZA LA COMIDA")
    end

    it "Menos personas de las invitadas" do
      c = LaFiestaMexicana.new(100, 50)
      r = c.people
      expect(r).to eq("#{50}\nTIENE UN TUPPER PARA LLEVAR?")
    end

    it "exacta la cantida de personas" do
      c = LaFiestaMexicana.new(50, 50)
      r = c.people
      expect(r).to eq("#{0}\nESTAMOS COMPLETOS")
    end

  end
end
