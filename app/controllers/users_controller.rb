class UsersController < ApplicationController
  def show
  end

  def update
    if current_user.update(user_params) 
      redirect_to root_path 
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email) 
  end
end
