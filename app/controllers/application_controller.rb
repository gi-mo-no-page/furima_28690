class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index, :show]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :first_name,:family_name,:first_name_kana,:family_name_kana,:birth_date])
  end
end
