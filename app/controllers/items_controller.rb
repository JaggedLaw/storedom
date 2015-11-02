class ItemsController < ApplicationController
  def index
    # cookies[:hit_counter] = cookies[:hit_counter].to_i + 1
    session[:hit_counter] = session[:hit_counter].to_i + 1
    if session[:hit_counter].to_i.even?
      flash[:alert] = "Hit counter is even"
    else
      flash[:alert] = "Hit counter is odd"
    end
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id].to_i)
  end
end
