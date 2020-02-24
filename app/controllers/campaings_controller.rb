class CampaingsController < ApplicationController
  def show
    @campaign = @staff.campaigns.paginate(page: params[:page])
  end
end
