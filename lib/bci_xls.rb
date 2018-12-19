require 'spreadsheet'
require 'bci'

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

    Bci.new(numero_cartola,desde,hasta,cuenta_corriente)
  end
end