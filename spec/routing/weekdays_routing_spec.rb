require "rails_helper"

RSpec.describe WeekdaysController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/weekdays").to route_to("weekdays#index")
    end

    it "routes to #new" do
      expect(get: "/weekdays/new").to route_to("weekdays#new")
    end

    it "routes to #show" do
      expect(get: "/weekdays/1").to route_to("weekdays#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/weekdays/1/edit").to route_to("weekdays#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/weekdays").to route_to("weekdays#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/weekdays/1").to route_to("weekdays#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/weekdays/1").to route_to("weekdays#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/weekdays/1").to route_to("weekdays#destroy", id: "1")
    end
  end
end
