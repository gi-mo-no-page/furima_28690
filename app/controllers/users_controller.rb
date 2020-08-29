class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id: current_user.id)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to show
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :image)
  end
end
