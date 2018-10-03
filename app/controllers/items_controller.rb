class ItemsController < ApplicationController

  # def show
  #   @item = Item.find(params[:id])
  # end
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to '/'
    else
      render '/new'
    end
  end
  
  def index
    @items = Item.all
  end
  
  def edit
    @items = Item.all
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      # Handle a successful update.
    else
      render '/edit'
    end
  end
  def update_all
    Item.all.each{|i|
    i.update_attributes(name: params[:name],code: params[:code])
    }
  end
  
  # def update_all
  #   Item.all.each do 
  #     update
  #   end
  # end

  private

    def item_params
      params.require(:item).permit(:name, :code)
    end
end
