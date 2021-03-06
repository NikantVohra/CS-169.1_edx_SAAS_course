module FunWithStrings

  def palindrome?  	
	word = self.downcase.gsub(/[^a-z]/,"")
	word == word.reverse
  end

  def count_words
	frequency = {}
	self.split.each do |word|
		word = word.downcase.gsub(/[^a-z]/,"")
		if /[a-z]/ =~ word	
			if frequency.keys.include? word
				frequency[word] += 1
			else
				frequency[word] = 1	
			end
		end
	end
	frequency	
  end

  def anagram_groups
	groups = []
	anagram_map = {}
	self.split.each do |word|
		word = word.downcase.gsub(/[^a-z]/,"")		
		sorted_word = word.chars.sort.join
		if anagram_map.keys.include? sorted_word
			anagram_map[sorted_word] <<= word
		else
			anagram_map[sorted_word] = [word]
		end
 	end
	anagram_map.values
  end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
