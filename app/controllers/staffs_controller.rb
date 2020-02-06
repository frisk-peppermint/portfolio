class StaffsController < ApplicationController
  before_action :logged_in_staff, only: [:edit, :update]
  
  def new
    @staff = Staff.new
  end
  
  def show
    @staff = Staff.find(params[:id])
  end
  
  def create
    @staff = Staff.new(staff_params)    # 実装は終わっていないことに注意!
    if @staff.save
      log_in @staff
      flash[:success] = "スタッフ登録に成功しました。"
      redirect_to @staff
    else
      render 'new'
    end
  end
  
  def edit
    @staff = Staff.find(params[:id])
  end
  
  def update
    @staff = Staff.find(params[:id])
    if @staff.update_attributes(staff_params)
      flash[:success] = "Profile updated"
      redirect_to @staff
      # 更新に成功した場合を扱う。
    else
      render 'edit'
    end
  end
  
  def logged_in_staff
      unless logged_in_as_staff?
        flash[:danger] = "Please log in."
        redirect_to stafflogin_url
      end
  end
  
  private

    def staff_params
      params.require(:staff).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
