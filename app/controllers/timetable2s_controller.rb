class Timetable2sController < ApplicationController
  before_action :set_timetable2, only: [:show, :edit, :update, :destroy]

  # GET /timetable2s
  # GET /timetable2s.json
  def index
    @timetable2s = Timetable2.all
  end

  # GET /timetable2s/1
  # GET /timetable2s/1.json
  def show
    @time0900 = Timetable.where(time: "9:00")
  end

  # GET /timetable2s/new
  def new
    @timetable2 = Timetable2.new
  end

  # GET /timetable2s/1/edit
  def edit
  end

  # POST /timetable2s
  # POST /timetable2s.json
  def create
    @timetable2 = Timetable2.new(timetable2_params)

    respond_to do |format|
      if @timetable2.save
        format.html { redirect_to @timetable2, notice: 'Timetable2 was successfully created.' }
        format.json { render :show, status: :created, location: @timetable2 }
      else
        format.html { render :new }
        format.json { render json: @timetable2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timetable2s/1
  # PATCH/PUT /timetable2s/1.json
  def update
    respond_to do |format|
      if @timetable2.update(timetable2_params)
        format.html { redirect_to @timetable2, notice: 'Timetable2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @timetable2 }
      else
        format.html { render :edit }
        format.json { render json: @timetable2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timetable2s/1
  # DELETE /timetable2s/1.json
  def destroy
    @timetable2.destroy
    respond_to do |format|
      format.html { redirect_to timetable2s_url, notice: 'Timetable2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timetable2
      @timetable2 = Timetable2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def timetable2_params
      params.require(:timetable2).permit(:user_id, :NOP, :time)
    end
end
