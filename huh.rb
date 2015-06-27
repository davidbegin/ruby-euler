# Number definitions using the article from wikipedia:
# http://en.wikipedia.org/wiki/Pythagorean_triple#Other_formulas_for_generating_triples
#

given_number = 999
m = 1
a = m*2 + 1
b = (m*2) * (m + 1)
c = ((m*2) * (m + 1)) + 1
sum = a + b + c


# Output and formatting
sep = "\t|\t"
puts "Your max value is " + given_number.to_s
puts sep+"small"+sep+"medium"+sep+"large"+ sep + "sum" + sep
puts "-" * 80

# Main loop calculating the numbers and outputs
while c < given_number
   m +=1
   puts sep + a.to_s +  sep+ b.to_s + sep +c.to_s + sep + sum.to_s + sep

   a = m*2 + 1
   b = (m*2) * (m + 1)
   c = ((m*2) * (m + 1)) + 1
   sum = a + b +c
end
