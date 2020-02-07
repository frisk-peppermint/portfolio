class MicropostsController < ApplicationController
 before_action :logged_in_staff, only: [:create, :destroy]
 before_action :correct_staff,   only: :destroy

  def create
    @micropost = current_staff.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to current_staff
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content, :picture)
    end
    
    def correct_staff
      @micropost = current_staff.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end