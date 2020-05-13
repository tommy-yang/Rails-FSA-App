require 'rails_helper'

RSpec.describe Delivery, type: :model do
  let(:subject) { described_class }

  describe '#test' do
    it 'runs test' do
      expect(1).to eq(1)
    end
  end
end
