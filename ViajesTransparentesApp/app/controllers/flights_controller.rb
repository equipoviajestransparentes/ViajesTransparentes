class FlightsController < ApplicationController
	before_action :set_flight, only: [:show, :edit, :update, :destroy]
	# GET /flights
	# GET /flights.json
	def index
		@flights = Flight.all

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @flights }
		end
	end

	# GET /flights/1
	# GET /flights/1.json
	def show
		@flight = Flight.find(params[:id])

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @flight }
		end
	end

	# GET /flights/new
	# GET /flights/new.json
	def new
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commission = @public_officer.commissions.find(params[:commission_id])
		@trip = @commission.trips.find(params[:trip_id])
		@detail = @trip.detail
		@flight = @detail.flights.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @flight }
		end
	end

	# GET /flights/1/edit
	def edit
		@flight = Flight.find(params[:id])
	end

	# POST /flights
	# POST /flights.json
	def create
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commission = @public_officer.commissions.find(params[:commission_id])
		@trip = @commission.trips.find(params[:trip_id])
		@detail = @trip.detail
		@flight = @detail.flights.new(params[:flight])

		respond_to do |format|
			if @flight.save
				format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
				format.json { render json: @flight, status: :created, location: @flight }
			else
				format.html { render action: "new" }
				format.json { render json: @flight.errors, status: :unprocessable_entity }
			end
		end
	end

	# PUT /flights/1
	# PUT /flights/1.json
	def update
		@flight = Flight.find(params[:id])

		respond_to do |format|
			if @flight.update_attributes(params[:flight])
				format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @flight.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /flights/1
	# DELETE /flights/1.json
	def destroy
		@flight = Flight.find(params[:id])
		@flight.destroy

		respond_to do |format|
			format.html { redirect_to flights_url }
			format.json { head :no_content }
		end
	end

	def flight_params
		params.require(:flight).permit(:detail_id, :vuelo_origen, :vuelo_regreso, :linea_origen, :linea_regreso, :created_at, :updated_at)
	end
end
