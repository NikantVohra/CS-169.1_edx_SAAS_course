class RockPaperScissors

  # Exceptions this class can raise: 
  class NoSuchStrategyError < StandardError ; end		
  def self.winner(player1, player2)
    # YOUR CODE HERE
	strategyArray = ['P','S','R']

	strategy1 = player1[1].upcase
	strategy2 = player2[1].upcase
	
	if !strategyArray.include?(strategy1) || !strategyArray.include?(strategy2)
		raise NoSuchStrategyError,"Strategy must be one of R,P,S"	;
	end  

	compare = strategyArray.index(strategy1) - strategyArray.index(strategy2) 

	if compare == 0 || compare == 1 || compare == -2
		player1
	else
		player2
	end	

  end
  def self.depth(array, depth=1)
    array = array.send(:first)
  	Array === array ? depth(array, depth+1) : depth
  end
  def self.tournament_winner(tournament)
    # YOUR CODE HERE
	if self.depth(tournament) == 2
		self.winner(tournament[0],tournament[1])
 	
	else
	self.winner(self.tournament_winner(tournament[0]),self.tournament_winner(tournament[1])) 	
	end			
   end

end
