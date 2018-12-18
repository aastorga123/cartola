require 'minitest/autorun'
require 'cartolabco'

class CartolabcoTest < Minitest::Test
  def test_hello
    assert_equal "Hola cartolabco!!!",
                 Cartolabco.hola()
  end
end