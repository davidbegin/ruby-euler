# so this really works!

timer_start = Time.now

product = 0

1.upto(1000) { |a|
  (a+1).upto(1000) { |b|
    c = 1000 - a - b
    if (a*a + b*b == c*c)
      product = a*b*c
    puts "a: #{a}"
    puts "b: #{b}"
    puts "c: #{c}"
      break
    end
  }
}

puts product
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
