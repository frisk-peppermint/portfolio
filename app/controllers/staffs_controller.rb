class StaffsController < ApplicationController
  def new
    @staff = Staff.new
  end
  
  def show
    @staff = Staff.find(params[:id])
  end
  
  def create
    @staff = Staff.new(staff_params)    # 実装は終わっていないことに注意!
    if @staff.save
      flash[:success] = "スタッフ登録に成功しました。"
      redirect_to @staff
    else
      render 'new'
    end
  end
  
  private

    def staff_params
      params.require(:staff).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
