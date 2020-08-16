class ItemsController < ApplicationController

  def index
    @items = Item.all.order(id: "DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
      if @item.save
        redirect_to root_path
      else
        render :new
      end
  end


  private
   def item_params
    params.require(:item).permit(:image, :name, :introduction, :category_id, :status_id, :shopping_charges_id, :shopping_region_id, :delivery_time_id, :price).merge(user_id: current_user.id)
   end

end
