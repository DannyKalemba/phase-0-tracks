

require_relative 'game'

describe Game do
  let(:game) {Game.new('unicorn')}

  it "return an array of chars for the word on initialization" do
    expect(game.word).to eq ['u','n','i','c','o','r','n']
  end

  it "return total number of guesses" do 
    expect(game.total_guesses).to eq 7
  end

  it "return true if letter guessed is in the word" do
    expect(game.check_letter('u')).to eq true
  end

  it "return true if letter was already guessed" do
    expect(game.repeated_guess('u',['u','_'])).to eq true
  end
end
