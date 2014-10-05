class SearchTripsController < ApplicationController
  before_action :set_search_trip, only: [:show, :edit, :update, :destroy]

  # GET /search_trips
  # GET /search_trips.json
  def index
    @search_trips = SearchTrip.all
  end

  # GET /search_trips/1
  # GET /search_trips/1.json
  def show
    @search_trip = SearchTrip.find(params[:id])
    @commissions = @search_trip.trips
    respond_to do |format|
      format.html
      format.json { render json: @commissions }
    end
  end

  # GET /search_trips/new
  def new
    @search_trip = SearchTrip.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @search_trip }
    end
  end

  # GET /search_trips/1/edit
  def edit
  end

  # POST /search_trips
  # POST /search_trips.json
  def create
    @search_trip = SearchTrip.new(search_trip_params)

    respond_to do |format|
      if @search_trip.save
        format.html { redirect_to @search_trip, notice: 'Search trip was successfully created.' }
        format.json { render :show, status: :created, location: @search_trip }
      else
        format.html { render :new }
        format.json { render json: @search_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /search_trips/1
  # PATCH/PUT /search_trips/1.json
  def update
    respond_to do |format|
      if @search_trip.update(search_trip_params)
        format.html { redirect_to @search_trip, notice: 'Search trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @search_trip }
      else
        format.html { render :edit }
        format.json { render json: @search_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /search_trips/1
  # DELETE /search_trips/1.json
  def destroy
    @search_trip.destroy
    respond_to do |format|
      format.html { redirect_to search_trips_url, notice: 'Search trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search_trip
      @search_trip = SearchTrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_trip_params
      params.require(:search_trip).permit(:inicio_fecha_rango, :fin_fecha_rango, :rango_min_gasto, :rango_max_gasto)
    end
end
