require 'rails_helper'

RSpec.describe Fsa, type: :model do
  
  context 'validation tests' do

    it 'contains three characters' do
      postal=Postal.new(postalcode: 'V7C')
      expect(postal.postalcode.length).to eq(3)
    
    end

    it 'should save successfully' do
      fsa=Fsa.new(fsacode: 'V7C').save
      expect(fsa).to eq(true)
    end
end

context 'scope tests' do

  let (:params) { {fsacode: 'V7C'}}
  before (:each) do
  Fsa.new(params).save

end

  it 'should return active Fsa' do
    expect(Fsa.active_fsas.size).to eq(1)
  end


end

end