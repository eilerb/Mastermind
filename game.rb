require_relative 'cpu_player'
require_relative 'human_player'

class Game
  attr_accessor :cpu, :human_player, :code

  def initialize
    @cpu = CPUPlayer.new
    @human_player = nil
    @code = []
  end

  def play
    puts "Welcome to Mastermind!\nAll you have to do is guess the correct four color code!\nThe colors are red, green, blue, yellow, purple, and orange"
    puts "\n"
    puts 'What is your name?'
    @human_player = HumanPlayer.new(gets.chomp)
  end
end

game = Game.new
game.play
