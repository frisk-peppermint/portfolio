class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :show]
  before_action :correct_user,   only: [:edit, :update, :show]
  
  def index
    @users = User.search(params[:search])
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @timetable = Timetable.where(user_id: params[:id]).first
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "ご登録ありがとうございます"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "アカウント情報が更新されました"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "患者様を抹消しました..."
    redirect_to users_url
  end
  
  #original
  def timetable
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: @day1) 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: @day1)
    @times1000 = Timetable.where(hour: "10", minute: "00", date: @day1)
    @times1030 = Timetable.where(hour: "10", minute: "30", date: @day1)
    @times1100 = Timetable.where(hour: "11", minute: "00", date: @day1)
    @times1130 = Timetable.where(hour: "11", minute: "30", date: @day1)
    @times1200 = Timetable.where(hour: "12", minute: "00", date: @day1)
    @times1230 = Timetable.where(hour: "12", minute: "30", date: @day1)
    @times1500 = Timetable.where(hour: "15", minute: "00", date: @day1)
    @times1530 = Timetable.where(hour: "15", minute: "30", date: @day1)
    @times1600 = Timetable.where(hour: "16", minute: "00", date: @day1)
    @times1630 = Timetable.where(hour: "16", minute: "30", date: @day1)
    @times1700 = Timetable.where(hour: "17", minute: "00", date: @day1)
    @times1730 = Timetable.where(hour: "17", minute: "30", date: @day1)
    @times1800 = Timetable.where(hour: "18", minute: "00", date: @day1)
    @times1830 = Timetable.where(hour: "18", minute: "30", date: @day1)
    @times1900 = Timetable.where(hour: "19", minute: "00", date: @day1)
    @times1930 = Timetable.where(hour: "19", minute: "30", date: @day1)
  end
  
  private

    def user_params
      params.require(:user).permit(:name, :tool, :password, :password_confirmation)
    end
    
    def logged_in_user
      unless logged_in? || logged_in_as_staff?
      store_location
        flash[:danger] = "ログインを行ってください"
        redirect_to login_url
      end
    end
    
    def correct_user
      @user = User.find(params[:id]) 
      redirect_to(root_url) unless current_user?(@user) || logged_in_as_staff?
    end
end
