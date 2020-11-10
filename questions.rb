class Question 
  attr_accessor :num1, :num2
  def initialize 
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end 
  def generate_question(current_player)
    puts"#{current_player}: What is #{num1} + #{num2}? "
  end 
  def get_input
    print ">"
    answer = $stdin.gets.chomp
  end
  def check_answer(answer)
    answer == @sum 
  end
end