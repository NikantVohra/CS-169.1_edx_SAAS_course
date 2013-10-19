def sum(array) 
	result = 0	
	array.each{|x| result += x}
	result	
end
=begin
puts "sum([]) == 0"
puts sum([]) == 0

puts "sum([1,2,3]) == 6"
puts sum([1,2,3]) == 6

puts "sum([1,2,3,4]) == 10"
puts sum([1,2,3,4]) == 10
=end
def max_2_sum(array)
	case array.length
		when 0 then 0
		when 1 then array[0]
		else 
			array.sort!
			array.sort[-1] + array.sort[-2]		
	end
end
=begin
puts "max_2_sum([]) == 0"
puts max_2_sum([]) == 0

puts "max_2_sum([1]) == 1"
puts max_2_sum([1]) == 1

puts "max_2_sum([3,1,2]) == 5"
puts max_2_sum([3,1,2]) == 5
=end
def sum_to_n?(array,n)
	if array.length == 0
		return true if n == 0
	elsif array.length == 1
		return true if n == array[0]
	else
		combinations_2 = array.combination(2).to_a
		combinations_2.each do |x,y|
			return true if x + y == n
		end		
	end

	return false					
end
=begin
puts "sum_to_n([],0) == true"
puts sum_to_n?([],0) == true

puts "sum_to_n([],1) == false"
puts sum_to_n?([],1) == false

puts "sum_to_n([1],1) == true"
puts sum_to_n?([1],1) == true

puts "sum_to_n([1],3) == false"
puts sum_to_n?([1],3) == false

puts "sum_to_n([1,2,3],5) == true"
puts sum_to_n?([1,2,3],5) == true

puts "sum_to_n([1,2,3],8) == false"
puts sum_to_n?([1,2,3],8) == false
=end

