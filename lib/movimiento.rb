class Movimiento

  attr_reader :fecha
  attr_reader :correlativo
  attr_reader :descripcion
  attr_reader :sucursal
  attr_reader :nro_documento
  attr_reader :cargo
  attr_reader :abono
  attr_reader :saldo

  def initialize(
      fecha, correlativo, descripcion, sucursal,
      nro_documento, cargo, abono, saldo
  )
    @fecha = fecha
    @correlativo = correlativo
    @descripcion = descripcion
    @sucursal = sucursal
    @nro_documento = nro_documento
    @cargo = cargo
    @abono = abono
    @saldo = saldo
  end

  def to_s
    "fecha: #{@fecha}\ncorrelativo: #{@correlativo}\n" +
        "descripcion: #{@descripcion}\nsucursal: #{@sucursal}\n" +
        "nro_documento: #{@nro_documento}\ncargo: #{@cargo}\nabono: #{@abono}" +
        "saldo: #{@saldo}"
  end
end