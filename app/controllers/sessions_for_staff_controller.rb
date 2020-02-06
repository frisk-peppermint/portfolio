class SessionsForStaffController < ApplicationController
  def new
  end
  
  def create
    staff = Staff.find_by(email: params[:session][:email].downcase)
    if staff && staff.authenticate(params[:session][:password])
      log_in_as_staff staff
      remember staff
      redirect_to staff
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    log_out_as_staff if logged_in_as_staff?
    redirect_to root_url
  end
  
end

#sessionsForStaffController にはsessions_for_staff_helperで定義したメソッドを書かなければならない
#例えば

#def destroy
#  log_out
#  redirect_to root_url
#end

#これではエラーになってしまう。具体的にはlog_outがsessions_for_staff_helperではなくsessions_helperに定義されているlog_outだとあつかわれてしまう