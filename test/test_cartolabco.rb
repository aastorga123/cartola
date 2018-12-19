require 'minitest/autorun'
require 'cartolabco'
require 'bci_xls'

class CartolabcoTest < Minitest::Test
  def test_bci_parse
    bci_xls = Cartolabco::BciParse.from_path('C:/Users/Usuario/Documents/GitHub/cartola/test/resources/cartola_bci.xls')
    bci = bci_xls.parse
    assert_equal 1, bci.numero_cartola
    assert_equal '29-12-2017', bci.desde
    assert_equal '17-01-2018', bci.hasta
    assert_equal '86686593', bci.cuenta_corriente
  end
end