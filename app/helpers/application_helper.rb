module ApplicationHelper
  include Pagy::Frontend

  def admin_signed_in?
    current_user&.admin?
  end

  def flash_class(flash)
    if flash.alert
      'alert-danger'
    elsif flash.notice
      'alert-success'
    end
  end

  def flash_message(flash)
    if flash.alert
      flash.alert
    elsif flash.notice
      flash.notice
    end
  end
end
