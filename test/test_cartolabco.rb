require 'minitest/autorun'
require 'cartolabco'

class CartolabcoTest < Minitest::Test
  def test_bci_parse_from_path
    bci_xls = Cartolabco::BciParse.from_path('./test/resources/cartola_bci.xls')
    bci = bci_xls.parse
    assert_equal 1, bci.numero_cartola
    assert_equal '29-12-2017', bci.desde
    assert_equal '17-01-2018', bci.hasta
    assert_equal '999999', bci.cuenta_corriente
    assert_equal 120, bci.movimientos.size
    assert_equal 83318585, bci.saldo_inicial
    assert_equal 87678085, bci.saldo_final
    assert_equal 13898614, bci.total_cargos
    assert_equal 18258114, bci.total_abonos
    assert_equal 87277922, bci.movimientos[53].saldo
  end

  def test_bci_parse_from_file
    bci_xls = Cartolabco::BciParse.from_file(
        File.open('./test/resources/cartola_bci.xls', 'r')
    )
    bci = bci_xls.parse
    assert_equal 1, bci.numero_cartola
    assert_equal '29-12-2017', bci.desde
    assert_equal '17-01-2018', bci.hasta
    assert_equal '999999', bci.cuenta_corriente
    assert_equal 120, bci.movimientos.size
    assert_equal 83318585, bci.saldo_inicial
    assert_equal 87678085, bci.saldo_final
    assert_equal 13898614, bci.total_cargos
    assert_equal 18258114, bci.total_abonos
    assert_equal 87277922, bci.movimientos[53].saldo
  end

  def test_file_not_exist
    assert_raises do
      Cartolabco::BciParse.from_path(
          './test/resources/cartola_bcirrrr'
      )
    end
  end

  def test_wrong_extension
    assert_raises do
      Cartolabco::BciParse.from_path(
          './test/resources/cartola.xlsx'
      )
    end
  end
end