# require_relative 'player'

class CPUPlayer
  attr_accessor :colors, :code, :correct_colors, :cpu_guess

  def initialize
    @code = Array.new(4)
    @colors = %w[red green blue yellow purple orange]
    @cpu_guess = Array.new(4)
    @correct_colors = Array.new(4)
  end

  def make_code
    self.code = code.map { |item| item = colors.shuffle.pop }
  end

  def crack_code(code)
    correct_color = 0
    correct_spot = 0

    if correct_colors.include?(nil)
      self.cpu_guess = make_code
    else
      self.cpu_guess = correct_colors
    end

    if cpu_guess == code
      puts 'CPU broke the code!'
      return true
    end

    if code.include?(cpu_guess[0])
      correct_color += 1
      if cpu_guess[0] == code[0]
        correct_spot += 1 
        correct_colors[0] = code[0]
      end
    end

    if code.include?(cpu_guess[1])
      correct_color += 1
      if cpu_guess[1] == code[1]
        correct_spot += 1 
        correct_colors[1] = code[1]
      end
    end

    if code.include?(cpu_guess[2])
      correct_color += 1
      if cpu_guess[2] == code[2]
        correct_spot += 1 
        correct_colors[2] = code[2]
      end
    end

    if code.include?(cpu_guess[3])
      correct_color += 1
      if cpu_guess[3] == code[3]
        correct_spot += 1 
        correct_colors[3] = code[3]
      end
    end

    puts "#{correct_color} of the colors you guessed were right and #{correct_spot} were in the correct spot"
    self.cpu_guess = []
    false
  
  end
end
