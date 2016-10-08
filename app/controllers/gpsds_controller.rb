class GpsdsController < ApplicationController
  include ActionController::MimeResponds
  include ActionController::Helpers
  include ActionController::Cookies
  include ActionController::ImplicitRender
  before_action :set_gpsd, only: [:show, :update, :destroy]

  # GET /gpsds
  # GET /gpsds.json
  def index
    @gpsds = Gpsd.all
    #respond_to do |format|
    #  format.json { render  }
   #end
  end

  # GET /gpsds/1
  # GET /gpsds/1.json
  def show
    render json: @gpsd
  end

  # POST /gpsds
  # POST /gpsds.json
  def create
    @gpsd = Gpsd.new(gpsd_params)

    if @gpsd.save
      render json: @gpsd, status: :created, location: @gpsd
    else
      render json: @gpsd.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gpsds/1
  # PATCH/PUT /gpsds/1.json
  def update
    @gpsd = Gpsd.find(params[:id])

    if @gpsd.update(gpsd_params)
      head :no_content
    else
      render json: @gpsd.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gpsds/1
  # DELETE /gpsds/1.json
  def destroy
    @gpsd.destroy

    head :no_content
  end

  private

    def set_gpsd
      @gpsd = Gpsd.find(params[:id])
    end
    
    def gpsd_params
      params.require(:gpsd).permit(:location,:device_id,:estatus,:alaram,:lat,:lng)
    end
end
