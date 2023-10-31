require 'spec_helper'
require_relative '../ceaser_cipher.rb'

RSpec.describe 'Ceaser Cipher' do
  describe 'empty message' do

    it 'returns an empty string' do
      expect(ceaser_cipher("", 5)).to eq("")
    end
  end

  describe 'lowercase message, zero shift' do

    it 'returns the exact same string' do
      expect(ceaser_cipher("This is my message", 0)).to eq("This is my message")
    end
  end

  describe 'lowercase message with shift' do

    it 'shifts message up by 3 letters' do
      expect(ceaser_cipher("abc defg", 3)).to eq("def ghij")
    end
  end

  describe 'message containing uppercase with shift' do

    it 'shifts message correctly and maintains uppercase' do
      expect(ceaser_cipher("Abc dEfg", 3)).to eq("Def gHij")
    end
  end

  describe 'message with shift of 30' do
    it 'shifts message correctly, as if shifting only by 4' do
      expect(ceaser_cipher("hello", 30)).to eq(ceaser_cipher("hello", 4))
    end
  end

  describe 'message with punctuation' do
    it 'shifts message and maintains punctuation' do
      expect(ceaser_cipher("a!b?c d@efg", 3)).to eq("d!e?f g@hij")
    end
  end

  describe 'message with negative shift of -3' do
    it 'shifts message down by three letters' do
      expect(ceaser_cipher("def ghij", -3)).to eq("abc defg")
    end
  end


end
