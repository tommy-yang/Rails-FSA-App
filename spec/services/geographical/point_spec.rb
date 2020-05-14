require 'rails_helper'

RSpec.describe Geographical::Point, type: :model do
  let(:subject) { described_class.new(params) }
  let(:longitude) { -123.1207 }
  let(:latitude) { 49.2827 }
  let(:params) { { longitude: longitude, latitude: latitude } }

  describe '#call' do
    it 'creates a point with spherical factory' do
      expect(RGeo::Cartesian).to receive_message_chain(:preferred_factory, :point)
        .with(longitude, latitude)
      subject.call
    end
  end
end
