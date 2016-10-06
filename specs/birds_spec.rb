require('minitest/autorun')
require('minitest/rg')
require_relative('../bird')
require_relative('../behaviours/chirp')
require_relative('../behaviours/quack')
require_relative('../behaviours/fly')
require_relative('../behaviours/cant_fly')

class BirdTest < MiniTest:: Test

  def setup
    quack_object = Quack.new
    fly_object = Fly.new
    chirp_object = Chirp.new

    @duck = Bird.new(quack_object, fly_object)
    @sparrow = Bird.new(chirp_object, fly_object)
    @penguin = Bird.new(Chirp.new, CantFly.new)
  end

  def test_penguin_cant_fly
    assert_equal("I can't!!", @penguin.fly)
  end

  def test_duck_can_quack
    assert_equal('quack', @duck.call)
  end

  def test_sparrow_can_chirp
    assert_equal('chirp', @sparrow.call)
  end
end
