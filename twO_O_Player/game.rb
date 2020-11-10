class Game 
  def initialize
    @player1 = Players.new('Player 1')
    @player2 = Players.new('Player 2')
    @current_player = @player1
  end
  def start_game
    while @player1.alive? && @player2.alive? do
      question = Question.new
      question.generate_question(@current_player.name)
      userInput = $stdin.gets.chomp
      print ">"
      if question.check_answer(userInput.to_i)
        puts "That's right!"
      else 
        puts "Not even close"
        @current_player.remove_life
      end 
      sleep(1)
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      sleep(1)
      if @current_player == @player1
        @current_player = @player2
      else 
        @current_player = @player1
      end
      puts "----NEXT TURN----"
    end 
    if @player1.dead?
      puts "Player 2 wins!"
    else 
      puts "Player 1 wins!"
    end
    puts "----GAME OVER----"
  end
end