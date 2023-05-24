class CalificacionesGrupo
  attr_writer :alum_cal
  attr_reader :prom_grup, :alum_aprob, :alum_repro, :alum_may, :alum_men

  def initialize(alum_cal)
    @alum_cal = alum_cal
    @alum_aprob = 0
    @alum_repro = 0
    @prom_grup = 0
    @alum_may = [alum_cal.keys.first, alum_cal[alum_cal.keys.first]]
    @alum_men = [alum_cal.keys.first, alum_cal[alum_cal.keys.first]]
    alum_cal.each do |k, v|
      (v.truncate(2) >= 60)? @alum_aprob += 1 : @alum_repro += 1
      if @alum_may[1] < v
        @alum_may[0], @alum_may[1] = k, v
      elsif @alum_may[1] == v and @alum_may[0] > k
        @alum_may[0], @alum_may[1] = k, v
      end

      if @alum_men[1] > v
        @alum_men[0], @alum_men[1] = k, v
      elsif @alum_men[1] == v and @alum_men[0] > k
        @alum_men[0], @alum_men[1] = k, v
      end

      @prom_grup += v
    end
  end

  def prom_grup
    @prom_grup = @prom_grup / @alum_cal.length
    if @prom_grup == @prom_grup.to_i
      @prom_grup.to_i
    else
      @prom_grup.truncate(2)
    end
  end

  def alum_aprob
    @alum_aprob
  end

  def alum_repro
    @alum_repro
  end

  def alum_may
    return "#{@alum_may[0]} #{@alum_may[1]}"
  end

  def alum_men
    return "#{@alum_men[0]} #{@alum_men[1]}"
  end

end

=begin
n = gets.chomp.to_i
alum = Hash.new

while n > 0
  name = gets.chomp
  cal = gets.chomp[0,5].to_f
  if cal <= 100 and cal >= 0
    alum[name] = cal
    n -= 1
  else
    while cal > 100 or cal < 0
      puts "UPS, ERROR!, DIGITE DE NUEVO LA CALIFICACION DE #{name}"
      cal = gets.chomp[0,5].to_f
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
=end
