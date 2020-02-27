class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include SessionsForStaffHelper
  
private

    # ユーザーのログインを確認する
    def logged_in_staff
      unless logged_in_as_staff?
        store_location
        flash[:danger] = "Please log in."
        redirect_to stafflogin_url
      end
    end
end