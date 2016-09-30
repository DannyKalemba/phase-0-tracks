# -Our word guessing game should ...
# -limit number of guesses based on length of word
# -return if letter guessed is in word
# -reveal letter
# -input word
# -return taunting message
# -return congratulatory message

require_relative 'game'

describe Game do
  let(:game) {Game.new}

  it "return an array of chars for the word" do
    expect(game.return_array('unicorn')).to eq ['u','n','i','c','o','r','n']
  end

  it "return number of guesses" do 
    expect(game.return_guess('unicorn')).to eq 7
  end

  it "return true if letter guessed is in the word" do
    expect(game.guess('u')).to eq true
  end

  it "return true if letter was already guessed" do
    expect(guessed_letter('u')).to eq true
  end

  

end
