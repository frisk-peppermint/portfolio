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
  
  def day2_staff
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: @day2) 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: @day2)
    @times1000 = Timetable.where(hour: "10", minute: "00", date: @day2)
    @times1030 = Timetable.where(hour: "10", minute: "30", date: @day2)
    @times1100 = Timetable.where(hour: "11", minute: "00", date: @day2)
    @times1130 = Timetable.where(hour: "11", minute: "30", date: @day2)
    @times1200 = Timetable.where(hour: "12", minute: "00", date: @day2)
    @times1230 = Timetable.where(hour: "12", minute: "30", date: @day2)
    @times1500 = Timetable.where(hour: "15", minute: "00", date: @day2)
    @times1530 = Timetable.where(hour: "15", minute: "30", date: @day2)
    @times1600 = Timetable.where(hour: "16", minute: "00", date: @day2)
    @times1630 = Timetable.where(hour: "16", minute: "30", date: @day2)
    @times1700 = Timetable.where(hour: "17", minute: "00", date: @day2)
    @times1730 = Timetable.where(hour: "17", minute: "30", date: @day2)
    @times1800 = Timetable.where(hour: "18", minute: "00", date: @day2)
    @times1830 = Timetable.where(hour: "18", minute: "30", date: @day2)
    @times1900 = Timetable.where(hour: "19", minute: "00", date: @day2)
    @times1930 = Timetable.where(hour: "19", minute: "30", date: @day2)
  end
  
  def day3_staff
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: @day3) 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: @day3)
    @times1000 = Timetable.where(hour: "10", minute: "00", date: @day3)
    @times1030 = Timetable.where(hour: "10", minute: "30", date: @day3)
    @times1100 = Timetable.where(hour: "11", minute: "00", date: @day3)
    @times1130 = Timetable.where(hour: "11", minute: "30", date: @day3)
    @times1200 = Timetable.where(hour: "12", minute: "00", date: @day3)
    @times1230 = Timetable.where(hour: "12", minute: "30", date: @day3)
    @times1500 = Timetable.where(hour: "15", minute: "00", date: @day3)
    @times1530 = Timetable.where(hour: "15", minute: "30", date: @day3)
    @times1600 = Timetable.where(hour: "16", minute: "00", date: @day3)
    @times1630 = Timetable.where(hour: "16", minute: "30", date: @day3)
    @times1700 = Timetable.where(hour: "17", minute: "00", date: @day3)
    @times1730 = Timetable.where(hour: "17", minute: "30", date: @day3)
    @times1800 = Timetable.where(hour: "18", minute: "00", date: @day3)
    @times1830 = Timetable.where(hour: "18", minute: "30", date: @day3)
    @times1900 = Timetable.where(hour: "19", minute: "00", date: @day3)
    @times1930 = Timetable.where(hour: "19", minute: "30", date: @day3)
  end
  
  def day4_staff
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: @day4) 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: @day4)
    @times1000 = Timetable.where(hour: "10", minute: "00", date: @day4)
    @times1030 = Timetable.where(hour: "10", minute: "30", date: @day4)
    @times1100 = Timetable.where(hour: "11", minute: "00", date: @day4)
    @times1130 = Timetable.where(hour: "11", minute: "30", date: @day4)
    @times1200 = Timetable.where(hour: "12", minute: "00", date: @day4)
    @times1230 = Timetable.where(hour: "12", minute: "30", date: @day4)
    @times1500 = Timetable.where(hour: "15", minute: "00", date: @day4)
    @times1530 = Timetable.where(hour: "15", minute: "30", date: @day4)
    @times1600 = Timetable.where(hour: "16", minute: "00", date: @day4)
    @times1630 = Timetable.where(hour: "16", minute: "30", date: @day4)
    @times1700 = Timetable.where(hour: "17", minute: "00", date: @day4)
    @times1730 = Timetable.where(hour: "17", minute: "30", date: @day4)
    @times1800 = Timetable.where(hour: "18", minute: "00", date: @day4)
    @times1830 = Timetable.where(hour: "18", minute: "30", date: @day4)
    @times1900 = Timetable.where(hour: "19", minute: "00", date: @day4)
    @times1930 = Timetable.where(hour: "19", minute: "30", date: @day4)
  end
  
  def day5_staff
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: @day5) 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: @day5)
    @times1000 = Timetable.where(hour: "10", minute: "00", date: @day5)
    @times1030 = Timetable.where(hour: "10", minute: "30", date: @day5)
    @times1100 = Timetable.where(hour: "11", minute: "00", date: @day5)
    @times1130 = Timetable.where(hour: "11", minute: "30", date: @day5)
    @times1200 = Timetable.where(hour: "12", minute: "00", date: @day5)
    @times1230 = Timetable.where(hour: "12", minute: "30", date: @day5)
    @times1500 = Timetable.where(hour: "15", minute: "00", date: @day5)
    @times1530 = Timetable.where(hour: "15", minute: "30", date: @day5)
    @times1600 = Timetable.where(hour: "16", minute: "00", date: @day5)
    @times1630 = Timetable.where(hour: "16", minute: "30", date: @day5)
    @times1700 = Timetable.where(hour: "17", minute: "00", date: @day5)
    @times1730 = Timetable.where(hour: "17", minute: "30", date: @day5)
    @times1800 = Timetable.where(hour: "18", minute: "00", date: @day5)
    @times1830 = Timetable.where(hour: "18", minute: "30", date: @day5)
    @times1900 = Timetable.where(hour: "19", minute: "00", date: @day5)
    @times1930 = Timetable.where(hour: "19", minute: "30", date: @day5)
  end
  
  def day6_staff
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: @day6) 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: @day6)
    @times1000 = Timetable.where(hour: "10", minute: "00", date: @day6)
    @times1030 = Timetable.where(hour: "10", minute: "30", date: @day6)
    @times1100 = Timetable.where(hour: "11", minute: "00", date: @day6)
    @times1130 = Timetable.where(hour: "11", minute: "30", date: @day6)
    @times1200 = Timetable.where(hour: "12", minute: "00", date: @day6)
    @times1230 = Timetable.where(hour: "12", minute: "30", date: @day6)
    @times1500 = Timetable.where(hour: "15", minute: "00", date: @day6)
    @times1530 = Timetable.where(hour: "15", minute: "30", date: @day6)
    @times1600 = Timetable.where(hour: "16", minute: "00", date: @day6)
    @times1630 = Timetable.where(hour: "16", minute: "30", date: @day6)
    @times1700 = Timetable.where(hour: "17", minute: "00", date: @day6)
    @times1730 = Timetable.where(hour: "17", minute: "30", date: @day6)
    @times1800 = Timetable.where(hour: "18", minute: "00", date: @day6)
    @times1830 = Timetable.where(hour: "18", minute: "30", date: @day6)
    @times1900 = Timetable.where(hour: "19", minute: "00", date: @day6)
    @times1930 = Timetable.where(hour: "19", minute: "30", date: @day6)
  end
  
  def day7_staff
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: @day7) 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: @day7)
    @times1000 = Timetable.where(hour: "10", minute: "00", date: @day7)
    @times1030 = Timetable.where(hour: "10", minute: "30", date: @day7)
    @times1100 = Timetable.where(hour: "11", minute: "00", date: @day7)
    @times1130 = Timetable.where(hour: "11", minute: "30", date: @day7)
    @times1200 = Timetable.where(hour: "12", minute: "00", date: @day7)
    @times1230 = Timetable.where(hour: "12", minute: "30", date: @day7)
    @times1500 = Timetable.where(hour: "15", minute: "00", date: @day7)
    @times1530 = Timetable.where(hour: "15", minute: "30", date: @day7)
    @times1600 = Timetable.where(hour: "16", minute: "00", date: @day7)
    @times1630 = Timetable.where(hour: "16", minute: "30", date: @day7)
    @times1700 = Timetable.where(hour: "17", minute: "00", date: @day7)
    @times1730 = Timetable.where(hour: "17", minute: "30", date: @day7)
    @times1800 = Timetable.where(hour: "18", minute: "00", date: @day7)
    @times1830 = Timetable.where(hour: "18", minute: "30", date: @day7)
    @times1900 = Timetable.where(hour: "19", minute: "00", date: @day7)
    @times1930 = Timetable.where(hour: "19", minute: "30", date: @day7)
  end
  
  def new
    @timetable = Timetable.new 
  end 
  
  def create
    @timetable = Timetable.new(user_id: current_user.id, user_name: current_user.name, date: timetable_params[:date], hour: timetable_params[:hour], minute: timetable_params[:minute])
    @timetables = Timetable.all
    @reservations = @timetables.where(date: "#{@timetable.date}", hour: "#{@timetable.hour}", minute: "#{@timetable.minute}")
    @user_id_in_timetable = @timetables.where(user_id: @timetable.user_id)
    
    if (@reservations.count < 4) && @user_id_in_timetable.empty?
      @timetable.save
      flash[:success] = "ご予約ありがとうございます。#{@timetable.date}日#{@timetable.hour}時#{@timetable.minute}分にお待ちしております。ご予約を取り消す場合は上に表示されている「#{@timetable.user_name} 様のご予約」からお願いします。"
      redirect_back(fallback_location: root_path)
    elsif @user_id_in_timetable.exists?
      flash[:danger] = "申し訳ございません。ご予約は一人につき一つまでとなっております。上に表示されている「#{@timetable.user_name} 様のご予約」で確認することができます。"
      redirect_back(fallback_location: root_path)
    else
      flash[:danger] = "申し訳ございません。#{@timetable.date}日#{@timetable.hour}時#{@timetable.minute}分の予約は枠が上限に達しているため、受け付けられませんでした。"
      redirect_back(fallback_location: root_path)
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
