def hello(name)
	"Hello, "+name
end

=begin
puts "hello(John) == Hello,John"
puts hello('John') == 'Hello,John'
=end


def starts_with_consonant?(s)
	if s.downcase =~ /\A(?=[^aeiou])(?=[a-z])/i
		return true
	else
		return false
	end
end

=begin
puts "starts_with_consonant?('excercise') == false"
puts starts_with_consonant?('excercise')	

puts "starts_with_consonant?('help') == true"
puts starts_with_consonant?('help')	

puts "starts_with_consonant?('At') == false"
puts starts_with_consonant?('At')	

puts "starts_with_consonant?('1excercise') == false"
puts starts_with_consonant?('1excercise')	
=end

def is_binary?(s)
	
	s.split("").each do |char|
		if char != '0' && char != '1'
			return false
		end
	end
	true		 
end

def binary_multiple_of_4?(s)
	s != '0' && s.length != 0 && is_binary?(s) && s.to_i(2) % 4 == 0
end

begin
puts "binary_multiple_of_4?('0') == true"
puts binary_multiple_of_4?('0') == true

puts "binary_multiple_of_4?('101') == false"
puts binary_multiple_of_4?('101') == false

puts "binary_multiple_of_4?('00100') == true"
puts binary_multiple_of_4?('00100') == true

puts "binary_multiple_of_4?('001003') == false"
puts binary_multiple_of_4?('001003') == false
end
