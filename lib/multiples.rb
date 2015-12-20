# Enter your procedural solution here!
def collect_multiples(number)
	multiples = Array.new
	for i in 1..number-1
		multiples << i if i == 3 || i == 5 || i % 3 == 0 || i % 5 == 0
	end
	return multiples
end

def sum_multiples(number)
	sum = 0
	multiples = collect_multiples(number)
	multiples.each {|x|
		sum = sum + x
	}
	return sum
end
