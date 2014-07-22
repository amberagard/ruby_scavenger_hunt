#My Starting Code
# require 'matrix'
#
# class MyVector < Vector
#
#   def initialize(x, y)
#     @vector = Vector[x, y]
#   end
#
#   def distance(x0, y0, x1, y1)
#     vector1 = Vector[x0, y0]
#     vector2 = Vector[x1, y1]
#     distance = Math.sqrt((x1 - x0)**2 + (y1 - y0)**2)
#   end

  # def self.pathlength(n)
  #   n.times do
  #     MyVector.distance(v) + self
  #   end
  # end
# end

require 'matrix'

class MyVector < Vector
  def distance(v)
    Math.sqrt((self[0]-v[0])**2 + (self[1]-v[1])**2)
  end

  def self.distance(a, *more)
    if more.length < 1
      return nil
    end
    stash = []
    stash << a
    distance_stash = 0
    more.each do |v|
      stash << v
    end
    for v in (0..stash.length - 1)
      if v == 0
        distance_stash = distance_stash + a.distance(stash[v])
      else
        distance_stash = distance_stash + stash[v].distance(stash[v - 1])
      end
    end
    distance_stash
  end

  def coerce(other)
    case other
    when Numeric
      return Vector::Scalar.new(other), self
    else
      raise TypeError "#{self.class} can't be coerced into #{other.class}"
    end
  end

  def integer

  end

end

#Notes:
#don't need initialize b/c it is already in the Vector class
#self is its own instance (like this in JS)

#MyVector[1,2].distance(Vector[2,2])
#MyVector is a vector so Vector could also be MyVector
