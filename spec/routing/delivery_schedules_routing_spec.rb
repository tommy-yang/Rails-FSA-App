require "rails_helper"

RSpec.describe DeliverySchedulesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/delivery_schedules").to route_to("delivery_schedules#index")
    end

    it "routes to #new" do
      expect(get: "/delivery_schedules/new").to route_to("delivery_schedules#new")
    end

    it "routes to #show" do
      expect(get: "/delivery_schedules/1").to route_to("delivery_schedules#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/delivery_schedules/1/edit").to route_to("delivery_schedules#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/delivery_schedules").to route_to("delivery_schedules#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/delivery_schedules/1").to route_to("delivery_schedules#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/delivery_schedules/1").to route_to("delivery_schedules#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/delivery_schedules/1").to route_to("delivery_schedules#destroy", id: "1")
    end
  end
end
