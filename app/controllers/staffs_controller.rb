class StaffsController < ApplicationController
  def new
  end
  
  def show
    @staff = Staff.find(params[:id])
  end
end
