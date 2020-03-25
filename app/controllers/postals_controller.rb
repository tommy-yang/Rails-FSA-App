class PostalsController < ApplicationController

def show
  @postal = Postal.find(params[:id])
end

def index
    @postals = Postal.all

end

def edit
    @postal = Postal.find(params[:id])
end

def new
  @postal = Postal.new
end

def create
@postal = Postal.new(params.require(:postal).permit(:postalcode))
if @postal.save
    flash[:notice] = "Postalcode was saved successfully"

redirect_to @postal


else
    
    render 'new'
end
end

def update 
@postal = Postal.find(params[:id])
if @postal.update(params.require(:postal).permit(:postalcode))

    flash[:notice] = "Postalcode was updated successfully"
    redirect_to @postal
else
  render 'edit'
end

end

def destroy
    @postal = Postal.find(params[:id])
    @postal.destroy
    redirect_to postals_path
end


end