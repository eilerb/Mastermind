require_relative 'player'

class HumanPlayer
  def initialize(name)
    super
    @name = name
  end
end

HumanPlayer < Player
