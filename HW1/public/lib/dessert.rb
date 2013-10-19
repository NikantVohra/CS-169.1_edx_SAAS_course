class Dessert
  attr_accessor :name 	
  attr_accessor :calories 	
  def initialize(name, calories)
    # your code here
	@name = name
	@calories = calories
  end
  def healthy?
	true if calories < 200
  end
  def delicious?
	true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
	
  def initialize(flavor)
    # your code here
	@flavor = flavor
	super(flavor+" jelly bean",5)
  end
  def delicious?
	return false if @flavor == "licorice"
	true
  end
end
