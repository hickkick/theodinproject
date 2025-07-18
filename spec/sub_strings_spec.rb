require_relative '../SubStrings/sub_strings'

RSpec.describe '#substrings' do
  it 'counts substring occurrences' do
    input = "Howdy partner, sit down! How's it going?"
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    expect(substrings(input, dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
  end

  it 'count substrings from one word' do 
    input = "below"
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    expect(substrings(input, dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it 'returns an empty hash if no matches found' do
    expect(substrings("Hello, world!", ["cat", "dog"])).to eq({})
  end

  it 'handles repeated substrings correctly' do
    expect(substrings("go go go", ["go"])).to eq({"go"=>3})
  end
end