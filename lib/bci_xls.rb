require 'spreadsheet'
require 'bci'
require 'movimiento'

class BciXls
  def initialize(file)
    @file = file
  end

  def parse
    spreadsheet = Spreadsheet.open(@file.path)
    book = spreadsheet.worksheet(0)
    numero_cartola = book.rows[4][12].to_i
    desde = book.rows[16][6].to_s[0..9]
    hasta = book.rows[16][6].to_s[14..23]
    cuenta_corriente = book.rows[7][6].to_s
    movimientos = fill_list(book)
    saldo_inicial = book.rows[22 + movimientos.size][3].to_f
    saldo_final = book.rows[22 + movimientos.size][9].to_f
    total_cargos = book.rows[22 + movimientos.size][5].to_f
    total_abonos = book.rows[22 + movimientos.size][7].to_f
    Bci.new(
        numero_cartola,desde,hasta,cuenta_corriente,movimientos,
        saldo_inicial, saldo_final, total_cargos, total_abonos
    )
  end

  private

  def fill_list(book)
    movimientos = Array.new
    correlativo = 1
    (20..book.rows.size).each do |index|
      row = book.rows[index]
      if row[0].to_s == 'Resumen del Periodo'
        break
      end
      movimientos.push(
                     Movimiento.new(
                                   row[0],
                                   correlativo,
                                   row[2],
                                   row[1],
                                   row[3].to_s[0..(row[3].to_s.size - 3)],
                                   not_nil_number(row[5]),
                                   not_nil_number(row[7]),
                                   not_nil_number(row[9])
                     )
      )
      correlativo = correlativo + 1
    end
    movimientos
  end

  private

  def not_nil_number(number)
    number.nil? ? 0 : number
  end
end