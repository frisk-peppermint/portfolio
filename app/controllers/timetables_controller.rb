class TimetablesController < ApplicationController
  before_action :logged_in_timetable, only: [:edit, :update, :show]
  before_action :correct_timetable,   only: [:edit, :update, :show]
  before_action :set_timetable,       only: [:destroy]
 
  def timetable_index
    @timetables = Timetable.all
    
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
  
  def new
    @timetable = Timetable.new 
  end 
  
  def create
    @timetable = Timetable.new(user_id: current_user.id, user_name: current_user.name, date: timetable_params[:date], hour: timetable_params[:hour], minute: timetable_params[:minute])
    @timetables = Timetable.all
    @reservations = @timetables.where(hour: "#{@timetable.hour}", minute: "#{@timetable.minute}")
    @user_id_in_timetable = @timetables.where(user_id: @timetable.user_id)
    
    if (@reservations.count < 4) && @user_id_in_timetable.empty?
      @timetable.save
      flash[:success] = "ご予約ありがとうございます。#{@timetable.date}日#{@timetable.hour}時#{@timetable.minute}分にお待ちしております"
      redirect_to root_path
    else
      flash[:danger] = "申し訳ございません。すでに予約が上限に達しているため、受け付けられませんでした。"
      redirect_to root_path
    end
    
    
  end
  
  def show
    @timetable = Timetable.where(user_id: params[:id]).first
  end 
  
  def edit 
    
  end
  
  def update
    @timetable = Timetable.find(params[:id])
    if @timetable.update_attributes(timetable_params)
      flash[:success] = "予約時間を変更しました。"
      redirect_to timetable_path(current_user)
    else
      flash[:danger] = "予約を受け付けられませんでした。"
      render 'edit'
      
    end
  end
  
  def destroy
    @timetable.destroy
    flash[:success] = "予約が取り消されました。"
    redirect_to root_path
  end 
  
  private
    def timetable_params
      params.require(:timetable).permit(:user_id, :user_name, :date, :hour, :minute)
    end  
  
    def logged_in_timetable
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    def correct_timetable
      @timetable = User.find(params[:id])
      redirect_to(root_url) unless @timetable == current_user
      
    end
  
    def set_timetable
      @timetable = Timetable.find(params[:id])
    end
    
    def hoge_params
      params.permit(:user_id)
    end
end
