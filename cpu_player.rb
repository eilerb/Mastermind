require_relative 'player'

class CPUPlayer
  def initialize
    super('CPU')
  end
end

CPUPlayer < Player
