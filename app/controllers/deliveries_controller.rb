class DeliveriesController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def destroy
  end

  private

  def permitted_attributes
    params.require(:deliveries).permit(:lng, :lat)
  end
end