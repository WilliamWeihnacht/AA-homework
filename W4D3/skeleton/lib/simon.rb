class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize()
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn

    show_sequence
    require_sequence
    
    unless @game_over
      round_success_message
      @sequence_length+=1
    end

  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    input = gets.chomp
    if input != seq[-1]
      @game_over = true
    end
  end

  def add_random_color
    random_num = rand(4)
    color = COLORS[random_num]
    puts color
    @seq<<color
    print @seq
  end

  def round_success_message
    puts "round won"
  end

  def game_over_message
    puts "game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over= false
    @seq = []
  end
end

# s = Simon.new
# s.play