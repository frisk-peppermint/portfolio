class StaticPagesController < ApplicationController
  def home
    if logged_in_as_staff?
      @micropost  = current_staff.microposts.build
      @feed_items = current_staff.feed.paginate(page: params[:page])
    end
    @timetable = Timetable.new
  end
  
  def contact
  end
  
  def campaign
  end
  
  def new
    
  end
  

  
end
