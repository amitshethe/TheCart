class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
  
  def new 
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
      render :new
    end 
  end

  private
  def item_params
    params.require(:item).permit(:Item_name,:Item_price)
  end
end
