require_relative('bird')

class Duck < Bird

  def initialize
    super()
  # in here you could do some stuff that would override the birds initiaalize...
  end

  def fly

    bird_flying = super()
    return "duck " + bird_flying
  end
end