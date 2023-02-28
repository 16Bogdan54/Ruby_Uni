# Define a base class that will be decorated
class Beverage
  def cost
    raise NotImplementedError, "Method cost must be defined in subclass"
  end

  def description
    raise NotImplementedError, "Method description must be defined in subclass"
  end
end

# Define some concrete beverages that inherit from the base class
class Espresso < Beverage
  def cost
    1.99
  end

  def description
    "Espresso"
  end
end

class HouseBlend < Beverage
  def cost
    0.89
  end

  def description
    "House Blend Coffee"
  end
end

# Define a decorator that will add extra behavior to a beverage
class CondimentDecorator < Beverage
  attr_accessor :beverage

  def initialize(beverage)
    @beverage = beverage
  end

  def cost
    raise NotImplementedError, "Method cost must be defined in subclass"
  end

  def description
    raise NotImplementedError, "Method description must be defined in subclass"
  end
end

# Define some concrete decorators that inherit from the decorator base class
class Mocha < CondimentDecorator
  def cost
    0.20 + @beverage.cost
  end

  def description
    @beverage.description + ", Mocha"
  end
end

class Whip < CondimentDecorator
  def cost
    0.10 + @beverage.cost
  end

  def description
    @beverage.description + ", Whip"
  end
end