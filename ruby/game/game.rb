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
  attr_reader :guess_count, :total_guesses, :word
  attr_accessor :blank_array, :guessed_letters

  def initialize(string)
    @word = string.chars
    @guess_count = 0 
    @total_guesses = string.length 
    @blank_array = Array.new(string.length) {'_'}
    @guessed_letters = []
  end

  def check_letter(letter)
    if @guessed_letters.include?(letter)
      false
    else
      @guessed_letters << letter
      @guess_count -= 1
      true
    end
  end

  def letter_index(letter)
    @word.index(letter) 
  end

  def all_matches(letter)
    arr = @word.each_index.select {|i| @word[i] == letter}
    arr
  end

  def add_letters(letter, arr)
    arr.each do |i|
      @blank_array.delete_at(i) 
      @blank_array.insert(i, letter)
    end
    @blank_array
  end

  def word_guessed
    if @blank_array = @word
      false
    else
      true      
    end
  end

end

#output

puts "Input a word to be guessed:"
input = gets.chomp.downcase
game = Game.new(input)
while game.total_guesses > 0 && game.word_guessed
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



