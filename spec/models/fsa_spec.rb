require 'rails_helper'

RSpec.describe Fsa, type: :model do
  
  context 'Test for valid FSA' do

    it 'Ensures FSA is valid and follows regex' do
      fsa=Fsa.new(fsacode: 'V7C').save
      expect(fsa).to eq(true)

    end

    it 'Contains three characters' do
      postal=Postal.new(postalcode: 'V7C')
      expect(postal.postalcode.length).to eq(3)
    
    end

    it 'should not save duplicate FSA' do
      
    end
    
end

context 'Test for invalid FSA' do

    it 'Is not valid if empty' do
      fsa= Fsa.new(fsacode: nil)
      expect(fsa).to_not be_valid
    end

    it 'Cannot contain more than 3 characters' do
      fsa= Fsa.new(fsacode: 'V7C4')
      expect(fsa).to_not be_valid
    end

    it 'Cannot contain less than 3 characters' do
      fsa= Fsa.new(fsacode: 'V5')
      expect(fsa).to_not be_valid
    end

    it 'Ensures FSA is invalid if does not follow formatting' do
      fsa=Fsa.new(fsacode: 'V7C1').save
      expect(fsa).to eq(false)

    end

  

  end
end