class PostalsController < ApplicationController

def show
  @postal = Postal.find(params[:id])
end


end