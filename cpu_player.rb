require_relative 'player'

class CPUPlayer
  attr_accessor :colors, :code

  def initialize
    @code = Array.new(4)
    @colors = %w[red green blue yellow purple orange]
  end

  def make_code
    code = Array.new(4)
    self.code = code.map { |item| item = colors.shuffle.pop }
  end
end

CPUPlayer < Player
