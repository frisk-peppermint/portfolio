module SessionsForStaffHelper
  def log_in_as_staff(staff)
    session[:staff_id] = staff.id
  end
  
  def current_staff
    if session[:staff_id]
      @current_staff ||= Staff.find_by(id: session[:staff_id])
    end
  end
  
  def logged_in_as_staff?
    !current_staff.nil?
  end
  
  def log_out_as_staff
    session.delete(:staff_id)
    @current_staff = nil
  end
end

#ここに定義するメソッド名はsessions_helperに書かれているメソッド名と同じになってはいけない。
#同じメソッド名があるとsession_helperの方がが呼び出されてしまう。