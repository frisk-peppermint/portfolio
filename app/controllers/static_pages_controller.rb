class StaticPagesController < ApplicationController
  def home
    if logged_in_as_staff?
      @micropost  = current_staff.microposts.build
      @feed_items = current_staff.feed.paginate(page: params[:page])
    end
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @times0900 = Timetable.where(hour: "9", minute: "00", date: "@day1") 
    @times0930 = Timetable.where(hour: "9", minute: "30", date: "@day1")
    @times1000 = Timetable.where(hour: "10", minute: "00", date: "@day1")
    @times1030 = Timetable.where(hour: "10", minute: "30", date: "@day1")
    @times1100 = Timetable.where(hour: "11", minute: "00", date: "@day1")
    @times1130 = Timetable.where(hour: "11", minute: "30", date: "@day1")
    @times1200 = Timetable.where(hour: "12", minute: "00", date: "@day1")
    @times1230 = Timetable.where(hour: "12", minute: "30", date: "@day1")
    @times1500 = Timetable.where(hour: "15", minute: "00", date: "@day1")
    @times1530 = Timetable.where(hour: "15", minute: "30", date: "@day1")
    @times1600 = Timetable.where(hour: "16", minute: "00", date: "@day1")
    @times1630 = Timetable.where(hour: "16", minute: "30", date: "@day1")
    @times1700 = Timetable.where(hour: "17", minute: "00", date: "@day1")
    @times1730 = Timetable.where(hour: "17", minute: "30", date: "@day1")
    @times1800 = Timetable.where(hour: "18", minute: "00", date: "@day1")
    @times1830 = Timetable.where(hour: "18", minute: "30", date: "@day1")
    @times1900 = Timetable.where(hour: "19", minute: "00", date: "@day1")
    @times1930 = Timetable.where(hour: "19", minute: "30", date: "@day1")
    
    @day1 = Date.today
    @day2 = @day1 + 1
    @day3 = @day1 + 2
    @day4 = @day1 + 3
    @day5 = @day1 + 4
    @day6 = @day1 + 5
    @day7 = @day1 + 6
    @time = Time.now
  end
  
  def new
  end
  
end
