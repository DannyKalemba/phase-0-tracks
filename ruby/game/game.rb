# -Our word guessing game should ...
# -create an array of the letters
# -limit number of guesses based on length of word
# -return true if letter guessed is in word
#   -Fill in blank array if letter guessed is in the word
# -reveal letter
# -driver code
#   -input word
#   -guess letter
#   -return taunting message
#   -return congratulatory message

class Game
  attr_reader :guess_count, :total_guesses, :word, :blank_array, :guessed_letters

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
      @guess_count += 1
      true
    end
  end

  def current_guesses
    @total_guesses - @guess_count
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
    if @blank_array == @word
      true
    else
      false      
    end
  end
end

#output

puts "Player 1 input a word to be guessed:"
input = gets.chomp.downcase 
game = Game.new(input)
system('cls')
while game.current_guesses > 0 && !game.word_guessed
  puts "Player 2 Enter a letter you would like to guess you have #{game.current_guesses} guesses left:"
  game.blank_array.each do |i|
    print i
  end
  letter = gets.chomp.downcase
  if  game.check_letter(letter)
    game.add_letters(letter, game.all_matches(letter))
  elsif 
    puts "Letter has already been guessed"
  end
end

if game.word_guessed 
  puts "Congratulations the word was #{game.word.join}"
else
  puts "You lose, is that the best you can do?"
end




