class TimetablesController < ApplicationController
  def timetable_index
    @timetables = Timetable.all
  end
end
