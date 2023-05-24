class CalificacionesGrupo
  attr_writer :alum_cal
  attr_reader :prom_grup, :alum_aprob, :alum_repro, :alum_may, :alum_men

  def initialize(alum_cal)
    @alum_cal = alum_cal.sort.to_h
    @aux = @alum_cal.sort_by { |k, v| v}.to_h
    @alum_aprob = 0
    @alum_repro = 0
    @prom_grup = 0
    @alum_cal.each_value do |n|
      (n >= 60)? @alum_aprob += 1 : @alum_repro += 1
      @prom_grup += n
    end
  end

  def prom_grup
    return (@prom_grup / @alum_cal.length).round(2)
  end

  def alum_aprob
    @alum_aprob
  end

  def alum_repro
    @alum_repro
  end

  def alum_may
    #aux = @alum_cal.sort_by { |k, v| v }.to_h
    n, c = @aux.to_a[-2]
    @alum_may = "#{n} #{c}"
  end

  def alum_men
    n, c = @aux.sort.to_h.first
    @alum_men = "#{n} #{c}"
  end

end

n = gets.chomp.to_i
alum = Hash.new

while n > 0
  name = gets.chomp
  cal = gets.chomp.to_f
  if cal <= 100 and cal >= 0
    alum[name] = cal
    n -= 1
  else
    while cal > 100 or cal < 0
      puts "UPS, ERROR!, DIGITE DE NUEVO LA CALIFICACION DE #{name}"
      cal = gets.chomp.to_f
    end
    alum[name] = cal
    n -= 1
  end
end

cal_grup = CalificacionesGrupo.new(alum)
puts "PROMEDIO GRUPAL: #{cal_grup.prom_grup}"
puts "ALUMNOS APROBADOS #{cal_grup.alum_aprob}"
puts "ALUMNOS REPROBADOS #{cal_grup.alum_repro}"
puts cal_grup.alum_may
puts cal_grup.alum_men
