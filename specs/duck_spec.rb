require('minitest/autorun')
require('minitest/rg')
require_relative('../duck')

# Duck Test inherets from MiniTest :: Test is the module
class DuckTest < MiniTest::Test

  def setup
    @duck = Duck.new
  end

  def test_duck_can_fly
    assert_equal("duck flying", @duck.fly())
  end

  # duck gets num_legs from duck (sub class), and before that duck (subclass) gets num_legs from bird (superclass)
  def test_duck_has_2_legs
    assert_equal(2,@duck.num_legs)
  end
end