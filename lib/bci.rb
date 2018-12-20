class Bci

  attr_reader :numero_cartola
  attr_reader :desde
  attr_reader :hasta
  attr_reader :cuenta_corriente
  attr_reader :movimientos
  attr_reader :saldo_inicial
  attr_reader :saldo_final
  attr_reader :total_cargos
  attr_reader :total_abonos

  def initialize(
      numero_cartola, desde, hasta, cuenta_corriente, movimientos,
      saldo_inicial, saldo_final, total_cargos, total_abonos
      )
    @numero_cartola = numero_cartola
    @desde = desde
    @hasta = hasta
    @cuenta_corriente = cuenta_corriente
    @movimientos = movimientos
    @saldo_inicial = saldo_inicial
    @saldo_final = saldo_final
    @total_cargos = total_cargos
    @total_abonos = total_abonos
  end

  def to_s
    "numero_cartola: #{@numero_cartola}\ndesde:#{@desde}\nhasta:#{@hasta}\n" +
        "cuenta_corriente:#{@cuenta_corriente}\nmovimientos:#{@movimientos}"
  end
end
