require_relative 'player'

class HumanPlayer
  def initialize(name)
    @name = name
  end
end

HumanPlayer < Player
