# -Our word guessing game should ...
# -create an array of the letters
# -limit number of guesses based on length of word
# -return true if letter guessed is in word
#   -check if more letters match guessed letter
# -reveal letter
# -input word
# -return taunting message
# -return congratulatory message

class Game
  attr_reader :guess_count, :total_guesses
  attr_accessor :word, :blank_array

  def initialize(string)
    @word = string.chars
    @guess_count = 0 
    @total_guesses = string.length 
    @blank_array = Array.new(string.length) {'_'}
  end

  def check_letter(letter)
    if @word.include?(letter) && !repeated_guess(letter,@blank_array)
      all_matches(letter)
      @blank_array[all_matches(letter).each] = letter
      @guess_count += 1
      true
    else
      false
    end    
  end

  def repeated_guess(letter, arr)
    if arr.include?(letter)
      true
    else
      false
    end
  end

  def letter_index(letter)
    @word.index(letter) 
  end

  def all_matches(letter)
    arr = @word.each_index.select {|i| @word[i] == letter}
    arr
  end
end

#output

puts "Input a word to be guessed:"
input = gets.chomp
game = Game.new(input)
while game.total_guesses > 0
  puts "Enter a letter you would like to guess:"
  game.blank_array.each do |i|
    print i
  end
  letter = gets.chomp
  if  game.check_letter(letter)
    game.blank_array[game.letter_index(letter)] = letter
  elsif 
    puts "Letter has already been guessed"
  end
end


