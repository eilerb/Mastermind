require_relative 'player'

class CPUPlayer
  attr_accessor :colors
  def initialize
    
  end

  def make_code
    code = Array.new(4)
    code = code.map { |item| item = colors.shuffle.pop}
end

CPUPlayer < Player
