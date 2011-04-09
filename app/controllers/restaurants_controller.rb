class RestaurantsController < ApplicationController

def index
	@restaurants = Restaurant.all
end

def new
  @restaurant = Restaurant.new
end

def create
  @restaurant = Restaurant.new(params[:restaurant])
  if(@restaurant.save)
    flash[:notice] = "Restaurant added sucessfully"
    redirect_to new_restaurant_path
    
  else
    render :action=>:new
  end
  
end

def show
  @restaurant = Restaurant.find(params[:id])
end

def edit
end

def update
end

def destroy
end

end
