class StaticPagesController < ApplicationController
  def home
    if logged_in_as_staff?
      @micropost  = current_staff.microposts.build
      @feed_items = current_staff.feed.paginate(page: params[:page])
    end
    @timetable = Timetable.new
    
    @timetables = Timetable.all
    
    @times0900 = Timetable.where(hour: "9", minute: "00") 
    @times0930 = Timetable.where(hour: "9", minute: "30")
    @times1000 = Timetable.where(hour: "10", minute: "00")
    @times1030 = Timetable.where(hour: "10", minute: "30")
    @times1100 = Timetable.where(hour: "11", minute: "00")
    @times1130 = Timetable.where(hour: "11", minute: "30")
    @times1200 = Timetable.where(hour: "12", minute: "00")
    @times1230 = Timetable.where(hour: "12", minute: "30")
    @times1500 = Timetable.where(hour: "15", minute: "00")
    @times1530 = Timetable.where(hour: "15", minute: "30")
    @times1600 = Timetable.where(hour: "16", minute: "00")
    @times1630 = Timetable.where(hour: "16", minute: "30")
    @times1700 = Timetable.where(hour: "17", minute: "00")
    @times1730 = Timetable.where(hour: "17", minute: "30")
    @times1800 = Timetable.where(hour: "18", minute: "00")
    @times1830 = Timetable.where(hour: "18", minute: "30")
    @times1900 = Timetable.where(hour: "19", minute: "00")
    @times1930 = Timetable.where(hour: "19", minute: "30")
  end
  
  def contact
  end
  
  def campaign
  end
  
  def new
    
  end
  

  
end
