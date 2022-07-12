require_relative 'cpu_player'
require_relative 'human_player'

class Game
  @@code = []

  def initialize
    @cpu = CPUPlayer.new
    puts 'What is your name?'
    @human_player = HumanPlayer.new(gets.chomp)
  end
end
