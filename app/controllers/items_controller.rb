class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @items = Item.order("created_at DESC")
  end

  def new
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
    params.require(:message).permit(:name, :image).merge(user_id: current_user.id)
   end


  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
