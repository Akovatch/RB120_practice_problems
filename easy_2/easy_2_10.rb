# Nobility

# Now that we have a Walkable module, we are given a new challenge.
# Apparently some of our users are nobility, and the regular way
# of walking simply isn't good enough. Nobility need to strut.

# We need a new class Noble that shows the title and name when walk is called:

# byron = Noble.new("Byron", "Lord")
# p byron.walk
# # => "Lord Byron struts forward"

# We must have access to both name and title because they are
# needed for other purposes that we aren't showing here.

# byron.name
# => "Byron"
# byron.title
# => "Lord"

# Hint:
# The easiest way to accomplish this is to provide a method that returns both the title
# and name objects of the Noble class, and just the name for other classes.


module Walkable # module and method 'walk' added to solve problem
  def walk
    if self.class == Noble
      puts "#{title} #{name} #{gait} forward"
    else
      puts "#{name} #{gait} forward"
    end
  end
end

class Noble
  include Walkable

  attr_reader :name, :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  private

  def gait
    "struts"
  end
end

class Person
include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"

p byron.name
# => "Byron"
p byron.title
# => "Lord"

# LS soultion: define a to_s method for each class, of which the method for Noble class specifies to print title and name

module Walkable
  def walk
    "#{self} #{gait} forward"
  end
end

class Person
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "runs"
  end
end

class Noble
  attr_reader :name, :title

  include Walkable

  def initialize(name, title)
    @title = title
    @name = name
  end

  def to_s
    "#{title} #{name}" # to_s method tells Ruby to print both title and name
  end

  private

  def gait
    "struts"
  end
end