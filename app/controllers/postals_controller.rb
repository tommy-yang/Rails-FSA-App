class PostalsController < ApplicationController

    before_action :set_postal, only: [:show, :edit, :update, :destroy]

def show
 
end

def index
    @postals = Postal.all

end

def edit
  
end

def new
  @postal = Postal.new
end

def create
@postal = Postal.new(postal_params)
if @postal.save
    flash[:notice] = "Postalcode was saved successfully"

redirect_to @postal


else
    
    render 'new'
end
end

def update 

if @postal.update(postal_params)

    flash[:notice] = "Postalcode was updated successfully"
    redirect_to @postal
else
  render 'edit'
end

end

def destroy
    
    @postal.destroy
    redirect_to postals_path
end

private

def set_postal
    @postal = Postal.find(params[:id])
end

def postal_params

    params.require(:postal).permit(:postalcode)
end

end