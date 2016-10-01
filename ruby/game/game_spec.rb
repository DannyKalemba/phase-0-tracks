

require_relative 'game'

describe Game do
  let(:game) {Game.new('uunicorn')}

  it "return an array of chars for the word on initialization" do
    expect(game.word).to eq ['u','u','n','i','c','o','r','n']
  end

  it "return total number of guesses" do 
    expect(game.total_guesses).to eq 8
  end

  it "return true if letter guessed is in the word" do
    expect(game.check_letter('u')).to eq true
  end

  it "return the index of the guessed letter" do
    expect(game.letter_index('u')).to eq 0
  end

  it "return an array of indexes where the letter is found in the word" do
    expect(game.all_matches('u')).to eq [0,1]
  end

  it "return a new array with the guessed letter filled in" do
    expect(game.add_letters('u',[0,1])).to eq ['u','u','_','_','_','_','_','_'] 
  end

end
