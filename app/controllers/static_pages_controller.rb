class StaticPagesController < ApplicationController
  def home
    if logged_in_as_staff?
      @micropost  = current_staff.microposts.build
      @feed_items = current_staff.feed.paginate(page: params[:page])
    end
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
  
  def day2
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
  
  def day3
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
  
  def day4
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
  
  def day5
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
  
  def day6
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
  
  def day7
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
  
  def description
  end
  
end
