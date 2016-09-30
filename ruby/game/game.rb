class Game
  attr_reader :guess_count
  attr_accessor :word

  def initialize(arr)
    @word = arr.chars
    @guess_count = 0 
  end

  def check_letter(letter)
    @guess_count += 1
    if @word.include?(letter)
      true
    else
      false
    end    
  end

  def repeated_guess(letter, arr)
    if arr.include?(letter)
      @guess_count -= 1
      true
    else
      false
    end
  end

  def return_total_guess(arr)
    arr.length - 2
  end

  def method_name
    
  end
end
