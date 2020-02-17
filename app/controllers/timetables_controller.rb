class TimetablesController < ApplicationController
  def timetable_index
    @timetables = Timetable.all
    
    
    @time0900 = Timetable.where(hour: "9", minute: "00") 
    @time0930 = Timetable.where(hour: "9", minute: "30")
    @time1000 = Timetable.where(hour: "10", minute: "00")
    @time1030 = Timetable.where(hour: "10", minute: "30")
    @time1100 = Timetable.where(hour: "11", minute: "00")
    @time1130 = Timetable.where(hour: "11", minute: "30")
    @time1200 = Timetable.where(hour: "12", minute: "00")
    @time1230 = Timetable.where(hour: "12", minute: "30")
    @time1500 = Timetable.where(hour: "15", minute: "00")
    @time1530 = Timetable.where(hour: "15", minute: "30")
    @time1600 = Timetable.where(hour: "16", minute: "00")
    @time1630 = Timetable.where(hour: "16", minute: "30")
    @time1700 = Timetable.where(hour: "17", minute: "00")
    @time1730 = Timetable.where(hour: "17", minute: "30")
    @time1800 = Timetable.where(hour: "18", minute: "00")
    @time1830 = Timetable.where(hour: "18", minute: "30")
    @time1900 = Timetable.where(hour: "19", minute: "00")
    @time1930 = Timetable.where(hour: "19", minute: "30")
  end
  
  def new
    @timetable = Timetable.new 
  end 
  
  def create
    @timetable = Timetable.new(user_id: current_user.id, user_name: current_user.name, date: timetable_params[:date], hour: timetable_params[:hour], minute: timetable_params[:minute])
    if @timetable.save
      flash[:success] = "ご予約ありがとうございます"
      redirect_to root_path
    else
      flash[:success] = "申し訳ございません。予約を受け付けられませんでした"
      redirect_to root_path
    end
  end
  
  def show
    @user = Timetable.find_by(params[:id])
  end
  
  def destroy
  end 
  
  private
  def timetable_params
    params.require(:timetable).permit(:user_id, :user_name, :date, :hour, :minute)
  end
end
