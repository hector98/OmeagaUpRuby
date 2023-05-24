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

  describe "#alum_aprob" do
    it "Todos los alumnos aprovados" do
      cal = {"a" => 60, "b" => 60.01, "c" => 65.09}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_aprob
      expect(r).to eq(3)
    end

    it "cero alumnos aprovados" do
      cal = {"a" => 59.9999, "b" => 50, "c" => 59.09}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_aprob
      expect(r).to eq(0)
    end

    it "parte de alumnos aprovados" do
      cal = {"a" => 59.99, "b" => 70, "c" => 90}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_aprob
      expect(r).to eq(2)
    end
  end

  describe "#alum_repro" do
    it "Todos los alumnos reprobados" do
      cal = {"a" => 55.90, "b" => 45.98, "c" => 50.89}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_repro
      expect(r).to eq(3)
    end

    it "Cero alumnos reprobados" do
      cal = {"a" => 60.01, "b" => 65.45, "c" => 99.99}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_repro
      expect(r).to eq(0)
    end

    it "Solo algunos alumnos reprobados" do
      cal = {"a" => 70, "b" => 50, "c" => 80, "d" => 40}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_repro
      expect(r).to eq(2)
    end
  end

  describe "#alum_may" do
    it "Solo un Alumno con mayor calificacion" do
      cal = {"a" => 50, "b" => 70, "c" => 90}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_may
      expect(r).to eq("c #{90}")
    end

    it "Mas de un alumno con la mayor calificacion" do
      cal = {"guera" => 78, "osita" => 90, "peta" => 88, "pecosa" => 90}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_may
      expect(r).to eq("osita #{90}")
    end

    it "Todos los alumnos con la misma calificacion" do
      cal = {"a" => 80, "b" => 80, "c" => 80}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_may
      expect(r).to eq("a #{80}")
    end
  end

  describe "#alum_men" do
    it "Solo un alumno con la menor calificacion" do
      cal = {"a" => 60, "b" => 55, "c" => 89}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_men
      expect(r).to eq("b #{55}")
    end

    it "Mas de un alumno con la menor calificacion" do
      cal = {"guera" => 80, "osita" => 100, "pecosa" => 80}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_men
      expect(r).to eq("guera #{80}")
    end

    it "Todos los alumnos con la misma calificacion" do
      cal = {"a" => 55, "b" => 55, "c" => 55}
      c = CalificacionesGrupo.new(cal)
      r = c.alum_men
      expect(r).to eq("a #{55}")
    end
  end
end
