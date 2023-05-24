require 'rspec'
require_relative '../calificaciones_de_un_grupo.rb'

RSpec.describe CalificacionesGrupo do
  describe "#prom_grup" do
    it "calificaciones sin decimal" do
      cal = {"a" => 60, "b" => 70, "c" => 80, "d" => 90}
      c = CalificacionesGrupo.new(cal)
      r = c.prom_grup
      expect(r).to eq(75)
    end
  end
end
