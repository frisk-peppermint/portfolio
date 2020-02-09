class TimetablesController < ApplicationController
  def timetable_index
    @timetables = Timetable.all
  end
  
  def new
    @timetable = Timetable.new 
  end 
  
  def create
  end
  
  def destroy
  end 
  
end
