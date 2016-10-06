# This is a superclass

class Bird

# make num_legs read only 
attr_reader :num_legs

#initialise the constructors
  def initialize(call_behaviour, fly_behaviour)
    @num_legs = 2
    @call_behaviour = call_behaviour
    @fly_behaviour = fly_behaviour
  end

  def fly
    @fly_behaviour.fly
  end

  def call
    @call_behaviour.call
  end

end