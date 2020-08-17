class ItemsController < ApplicationController
  before_action :set_item, only: [:edit, :show]

  def index
    @items = Item.all.order(id: "DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
      if @item.save
        redirect_to root_path
      else
        render :new
      end
  end

  def show
  end

  def edit
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
      if item.save
        redirect_to root_path
      else
        render :edit
      end
  end

  def destroy
    item = Item.find(params[:id])
      if item.destroy
        redirect_to root_path
      end
  end


  private
   def item_params
    params.require(:item).permit(:image, :name, :introduction, :category_id, :status_id, :shopping_charges_id, :shopping_region_id, :delivery_time_id, :price).merge(user_id: current_user.id)
   end

   def set_item
    @item = Item.find(params[:id])
  end

end
