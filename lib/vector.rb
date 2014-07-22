class MyVector < Vector

  def initialize
    @vector = Vector[x, y]
  end

  def distance(x0, y0, x1, y1)
    vector1 = Vector[x0, y0]
    vector2 = Vector[x1, y1]
    distance = Math.sqrt((x1 - x0)**2 + (y1 - y0)**2)
  end
end
