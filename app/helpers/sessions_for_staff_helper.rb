module SessionsForStaffHelper
  
  def log_in_as_staff(staff)
    session[:staff_id] = staff.id
  end
  
  def remember(staff)
    staff.remember
    cookies.permanent.signed[:staff_id] = staff.id
    cookies.permanent[:remember_token] = staff.remember_token
  end
  
  def current_staff?(staff)
    staff == current_staff
  end
  
  def current_staff
    if (staff_id = session[:staff_id])
      @current_staff ||= Staff.find_by(id: staff_id)
      
    elsif (staff_id = cookies.signed[:staff_id])
    
      staff = Staff.find_by(id: staff_id)
      if staff && staff.authenticated?(cookies[:remember_token])
        log_in_as_staff staff
        @current_staff = staff
      end
    end
  end

  
  def logged_in_as_staff?
    !current_staff.nil?
  end
  
  def forget(staff)
    staff.forget
    cookies.delete(:staff_id)
    cookies.delete(:remember_token)
  end
  
  def log_out_as_staff
    forget(current_staff)
    session.delete(:staff_id)
    @current_staff = nil
  end



# 記憶したURL (もしくはデフォルト値) にリダイレクト
  def redirect_back_or_for_staff(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # アクセスしようとしたURLを覚えておく
  def store_location_for_staff
    session[:forwarding_url] = request.original_url if request.get?
  end
end
#ここに定義するメソッド名はsessions_helperに書かれているメソッド名と同じになってはいけない。
#同じメソッド名があるとsession_helperの方がが呼び出されてしまう。