require 'rails_helper'

RSpec.describe Geographical::Geometry, type: :model do
  let(:subject) { described_class.new(params) }
  let(:sw_lon) { -123.22496118 }
  let(:sw_lat) { 49.19844515 }
  let(:ne_lon) { -123.02324196 }
  let(:ne_lat) { 49.31617132 }
  let(:sw) { RGeo::Cartesian.preferred_factory.point(sw_lon, sw_lat) }
  let(:ne) { RGeo::Cartesian.preferred_factory.point(ne_lon, ne_lat) }  
  let(:params) do 
    { 
      sw_lon: sw_lon,
      sw_lat: sw_lat,
      ne_lon: ne_lon,
      ne_lat: ne_lat
    }
  end

  describe '#call' do
    it 'creates a geometry with cartesian bounding box' do
      expect(RGeo::Cartesian).to receive_message_chain(:preferred_factory, :point).with(sw_lon, sw_lat)
      expect(RGeo::Cartesian).to receive_message_chain(:preferred_factory, :point).with(ne_lon, ne_lat)
      expect(RGeo::Cartesian::BoundingBox).to receive_message_chain(:create_from_points, :to_geometry)
      subject.call
    end
  end
end
