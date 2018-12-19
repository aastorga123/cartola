class Bci

  attr_reader  :numero_cartola
  attr_reader  :desde
  attr_reader  :hasta
  attr_reader  :cuenta_corriente

  def initialize(numero_cartola, desde, hasta, cuenta_corriente)
    @numero_cartola = numero_cartola
    @desde = desde
    @hasta = hasta
    @cuenta_corriente = cuenta_corriente
  end

  def to_s
    "numero_cartola: #{@numero_cartola}\ndesde:#{@desde}\nhasta:#{@hasta}\ncuenta_corriente:#{@cuenta_corriente}\n"
  end
end
