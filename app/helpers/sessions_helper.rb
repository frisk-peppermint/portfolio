module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def current_user?(user)
    user == current_user
  end
  
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # アクセスしようとしたURLを覚えておく
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
  
  # timetables/user_id/showなどで使用される
  def current_user_timetable
    if session[:user_id]
      @current_timetable ||= Timetable.find_by(id: session[:user_id])
    end
  end
  
end