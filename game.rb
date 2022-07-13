require_relative 'cpu_player'
require_relative 'human_player'

class Game
  attr_accessor :cpu, :human_player, :code

  def initialize
    puts "Welcome to Mastermind!\nAll you have to do is guess the correct four color code!\nThe colors are red, green, blue, yellow, purple, and orange"
    puts "\n"
    @human_player = HumanPlayer.new
    @cpu = CPUPlayer.new
  end

  def play
    puts "Would you like to guess or make the code?\nEnter'g' to guess or 'c' to make the secret code"
    input = gets.chomp
    if input == 'g'
      code = cpu.make_code
      binding.pry
      12.times do
        break if human_player.crack_code(code)
      end
    elsif input == 'c'
      code = human_player.make_code
      12.times do
        break if cpu.crack_code(code)
      end
    end
  end
end

game = Game.new
game.play
