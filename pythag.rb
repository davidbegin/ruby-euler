# So this is translating from Java

class PythagoranTriplesCounter
  def initialize(limit)
    @limit = limit
    @total = 0
    @primitives = 0
    generate_triples(3, 4, 5)
  end

  attr_reader :total, :primitives

  private

  def generate_triples(a, b, c)
    perim = a + b + c
    return if perim > @limit

    @primitives += 1
    @total += @limit / perim

    generate_triples( a-2*b+2*c, 2*a-b+2*c, 2*a-2*b+3*c)
    generate_triples( a+2*b+2*c, 2*a+b+2*c, 2*a+2*b+3*c)
    generate_triples(-a+2*b+2*c,-2*a+b+2*c,-2*a+2*b+3*c)
  end
end

perim = 10
while perim <= 100_000_000
  c = PythagoranTriplesCounter.new perim
  p [perim, c.total, c.primitives]
  perim *= 10
end
