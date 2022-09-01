class ApplicationController < ActionController::Base
  include Pagy::Backend

  def authorize_admin!
    unless current_user&.admin?
      if user_signed_in?
        redirect_to root_path
        return
      else
        redirect_to new_user_session_url
      end
    end
  end
end
