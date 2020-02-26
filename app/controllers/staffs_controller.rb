class StaffsController < ApplicationController
  before_action :logged_in_staff, only: [:edit, :update, :destroy]
  before_action :correct_staff,   only: [:edit, :update]
  before_action :admin_staff,     only: :destroy
  
  def index
    @staffs = Staff.paginate(page: params[:page], per_page: 10)
  end
  
  def new
    @staff = Staff.new
  end
  
  def show
    @staff = Staff.find(params[:id])
    @microposts = @staff.microposts.paginate(page: params[:page], per_page: 10)
  end
  
  def create
    @staff = Staff.new(staff_params)  
    
    if @staff[:key] == "nikoniko"
       @staff.save
       log_in_as_staff @staff
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
      flash[:success] = "スタッフ情報を変更しました"
      redirect_to @staff
      # 更新に成功した場合を扱う。
    else
      render 'edit'
    end
  end
  
  def correct_staff
      @staff = Staff.find(params[:id])
      redirect_to(root_url) unless @staff == current_staff
  end
  
  def destroy
    Staff.find(params[:id]).destroy
    flash[:success] = "スタッフを削除しました"
    redirect_to staffs_url
  end
  
  
  private

    def staff_params
      params.require(:staff).permit(:name, :email, :password, :password_confirmation, :key, :image)
    end
    
    def correct_staff
      @staff = Staff.find(params[:id])
      redirect_to(root_url) unless current_staff?(@staff)
    end
    
    def admin_staff
      redirect_to(root_url) unless current_staff.admin?
    end
end
