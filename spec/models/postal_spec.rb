require 'rails_helper'

RSpec.describe Postal, type: :model do
  
  context 'validation tests' do

  
    it 'Ensures Postalcode is valid and follows formatting' do
      postal=Postal.new(postalcode: 'V7C1M9').save
      expect(postal).to eq(false)
    end

    it 'Contains six characters' do
      postal=Postal.new(postalcode: 'V5L4C3')
      expect(postal.postalcode.length).to eq(6)
    end


  context 'Test for invalid postalcode' do

    it 'Is not valid if empty' do
      postal=Postal.new(postalcode: :nil)
      expect(postal).to_not be_valid
    end
  
    it 'Cannot contain more than 6 characters' do
      postal=Postal.new(postalcode: 'V7C1M92')
      expect(postal).to_not be_valid
    end
  
    it 'Cannot contain less than 6 characters' do
      postal=Postal.new(postalcode: 'V7C1M')
      expect(postal).to_not be_valid
    end
  
    it 'Ensures postalcode is invalid if it does not follow formatting' do
      postal=Postal.new(postalcode: 'V7C1M99').save
      expect(postal).to eq(false)
  
    end

  end

end

end