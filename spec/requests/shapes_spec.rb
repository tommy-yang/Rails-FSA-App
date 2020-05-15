 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/shapes", type: :request do
  # Shape. As you add validations to Shape, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Shape.create! valid_attributes
      get shapes_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      shape = Shape.create! valid_attributes
      get shape_url(shape)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_shape_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      shape = Shape.create! valid_attributes
      get edit_shape_url(shape)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Shape" do
        expect {
          post shapes_url, params: { shape: valid_attributes }
        }.to change(Shape, :count).by(1)
      end

      it "redirects to the created shape" do
        post shapes_url, params: { shape: valid_attributes }
        expect(response).to redirect_to(shape_url(Shape.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Shape" do
        expect {
          post shapes_url, params: { shape: invalid_attributes }
        }.to change(Shape, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post shapes_url, params: { shape: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested shape" do
        shape = Shape.create! valid_attributes
        patch shape_url(shape), params: { shape: new_attributes }
        shape.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the shape" do
        shape = Shape.create! valid_attributes
        patch shape_url(shape), params: { shape: new_attributes }
        shape.reload
        expect(response).to redirect_to(shape_url(shape))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        shape = Shape.create! valid_attributes
        patch shape_url(shape), params: { shape: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested shape" do
      shape = Shape.create! valid_attributes
      expect {
        delete shape_url(shape)
      }.to change(Shape, :count).by(-1)
    end

    it "redirects to the shapes list" do
      shape = Shape.create! valid_attributes
      delete shape_url(shape)
      expect(response).to redirect_to(shapes_url)
    end
  end
end
