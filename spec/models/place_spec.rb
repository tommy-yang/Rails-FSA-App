require 'rails_helper'

RSpec.describe Place, type: :model do
 
  context 'Validation tests for name and address' do

      it 'Is valid if name and adress is not empty' do
       place= Place.new(name: 'home', address: '8860 cairnmore place')
        expect(place).to be_valid
      end

      context 'Test for invalid Name and address' do

        it 'Is not valid if name is empty' do
          place= Place.new(name: nil)
           expect(place).to_not be_valid
         end

end

end
end
