require 'spec_helper'
require_relative '../substrings.rb'

RSpec.describe 'Substrings' do
  dictionary = ["below","down","go","going","horn","how","howdy","it","i",
                "low","own","part","partner","sit"]

  describe 'Empty substring' do

    it 'Return an empty hashmap' do
      expect(substrings("", dictionary)).to eq({})
    end
  end

  describe 'String matches full word in dictionary' do

    it 'Returns hash with only that word' do
      expect(substrings("horn", dictionary)).to eq({ "horn" => 1 })
    end
  end

  describe 'Single word string matches multiple words' do

    it 'Returns hash with multiple words' do
      expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
    end
  end

  describe 'Multiple word string matches multiple words' do

    it 'Return hash with multiple words with multiple counts' do
      expect(substrings("Howdy partner, sit down! How's it going?", dictionary))
        .to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, 
                 "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1,
                 "partner" => 1, "sit" => 1 })
    end
  end

  describe 'Multiple word string but no matches' do
    it 'shifts message correctly, as if shifting only by 4' do
      expect(substrings("Whales are cool creatures.", dictionary)).to eq({})
    end
  end
end
