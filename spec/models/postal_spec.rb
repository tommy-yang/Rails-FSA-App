require 'rails_helper'

RSpec.describe Postal, type: :model do
  context 'validation tests' do

    it 'contains six characters' do
      postal=Postal.new(postalcode: 'V7C1M9')
      expect(postal.postalcode.length).to eq(6)
    
    end

    #it 'ensures postal code presence' do
     # postal=Postal.new(postalcode: 'V7C1M9')
      #expect(postal.postalcode).to eq(nil)
    #end

    it 'should save successfully' do
      postal=Postal.new(postalcode: 'V5A1S6').save
      expect(postal).to eq(true)
    end
    #it 'should match formatting' do
      #postal=(Postal.new(postalcode: 'V7C1M9'))
      #regex= /\A^(?!.*[DFIOQU])[A-VXY][0-9][A-Z] ?[0-9][A-Z][0-9]$\z/
      #expect((postal.postalcode).to match(regex))
    
    #end

  end

  #context 'scope tests' do
   
      #Postal.new(postalcode: 'V7C1M9').save
      #Postal.new((postalcode: 'V7C1M9').(active: true)).save
      #Postal.new((postalcode: 'V7C1M9').merge(active: false)).save

    #it 'should return active postal codes' do
     # expect(Postal.active_postals.size).to eq(2)
    #end
    #it 'should return inactive postal codes' do
     # expect(Postal.inactive_postals.size).to eq(1)
    #end


#end

end