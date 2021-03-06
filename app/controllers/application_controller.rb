class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless current_user && current_user.admin?
      flash[:alert] = "You aren't authorized to do that."
      redirect_to '/'
    end
  end
end
