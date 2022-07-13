class HumanPlayer
  attr_accessor :code, :colors, :player_guess

  def initialize
    #@colors = %w[red green blue yellow purple orange]
    @player_guess = []
    @code = Array.new(4)
  end

  def guess
    puts 'What is your guess? (Enter colors separated by a space)'
    player_guess.concat(gets.chomp.split)
  end

  def crack_code(code)
    correct_color = 0
    correct_spot = 0
    guess

    if player_guess == code
      puts 'You broke the code! Congratulations!'
      return true
    end

    if code.include?(player_guess[0])
      correct_color += 1
      correct_spot += 1 if player_guess[0] == code[0]
    end

    if code.include?(player_guess[1])
      correct_color += 1
      correct_spot += 1 if player_guess[1] == code[1]
    end

    if code.include?(player_guess[2])
      correct_color += 1
      correct_spot += 1 if player_guess[2] == code[2]
    end

    if code.include?(player_guess[3])
      correct_color += 1
      correct_spot += 1 if player_guess[3] == code[3]
    end

    puts "#{correct_color} of the colors you guessed were right and #{correct_spot} were in the correct spot"
    self.player_guess = []
    false
  end

  def make_code
    puts 'Enter your secret code (separated with spaces): '
    self.code = code.concat(gets.chomp.split)
  end
end
