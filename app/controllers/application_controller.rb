class ApplicationController < ActionController::API
  include ::ActionController::Cookies 

  def current_user
    User.find(session[:user_id])
  end
end
