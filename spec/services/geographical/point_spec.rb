require 'rails_helper'

RSpec.describe Geographical::Point, type: :model do
  let(:subject) { described_class.new(params) }
  let(:longitude) { -123.1207 }
  let(:latitude) { 49.2827 }
  let(:params) { { longitude: longitude, latitude: latitude } }
  let(:factory) { double }  
  let(:flat_coordinate) { double(factory: factory) }

  describe '#call' do
    it 'runs test' do
      expect(RGeo::Cartesian).to receive(:preferred_factory).with(srid: 4326)
      subject.call
    end
  end
end
