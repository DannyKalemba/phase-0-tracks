# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# p Shout.yell_angrily('Whhhhhy')
# p Shout.yelling_happily('Yesss')

module Shout  
  def yell_angrily(words)
    puts words + "!!!" + " :("
  end
  def yelling_happily(words)
    puts words + "!!!" + " :)"
  end
end

class Adult
  include Shout
end

class Baby
  include Shout
end

kid = Baby.new
kid.yelling_happily('Yesss')
kid.yell_angrily('Noooo')

man = Adult.new
man.yelling_happily('Oh Yeah')
man.yell_angrily('Oh Nooo')