class TripsController < ApplicationController
  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @trips }
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
    @trip = Trip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/new
  # GET /trips/new.json
  def new
    @public_officer = PublicOfficer.find(params[:public_officer_id])
    @commissions = @public_officer.commissions.all
    @commission = @public_officer.commissions.find(params[:commission_id])
    @trip = @commission.trips.new
    @paises_array = LocalidadesCatalogo.select(:pais).map(&:pais).uniq

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @trip }
    end
  end

  # GET /trips/1/edit
  def edit
    @public_officer = PublicOfficer.find(params[:public_officer_id])
    @commission = @public_officer.commissions.find(params[:commission_id])
    @trip = @commission.trips.find(params[:id])

    respond_to do |format|
      if @trip.save
        format.html { redirect_to new_public_officer_commission_trip_detail_path(@public_officer, @commission, @trip), notice: 'Trip was successfully created.' }
        format.json { render json: @trip, status: :created, location: @trip }
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end

  end

  # POST /trips
  # POST /trips.json
  def create
    @public_officer = PublicOfficer.find(params[:public_officer_id])
    @commission = @public_officer.commissions.find(params[:commission_id])
    @trip = @commission.trips.create(params[:trip])
    @trip.expense = Expense.create

    respond_to do |format|
      if @trip.save
        format.html { redirect_to new_public_officer_commission_trip_detail_path(@public_officer, @commission, @trip), notice: 'Trip was successfully created.' }
        format.json { render json: @trip, status: :created, location: @trip }
      else
        format.html { render action: "new" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /trips/1
  # PUT /trips/1.json
  def update
    @trip = Trip.find(params[:id])

    respond_to do |format|
      if @trip.update_attributes(params[:trip])
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy

    respond_to do |format|
      format.html { redirect_to trips_url }
      format.json { head :no_content }
    end
  end

def update_estado
    @estados_array = LocalidadesCatalogo.where(:pais => params[:pais_id]).map(&:estado).uniq
  end

  def update_ciudad
    @ciudades_array = LocalidadesCatalogo.where(:estado => params[:estado_id]).pluck(:id, :ciudad).uniq
  end

  def update_localidad
    @localidad_origen = params[:localidad_id]
  end

  def update_estado_d
    @estados_array = LocalidadesCatalogo.where(:pais => params[:pais_id]).map(&:estado).uniq
  end

  def update_ciudad_d
    @ciudades_array = LocalidadesCatalogo.where(:estado => params[:estado_id]).pluck(:id, :ciudad).uniq
  end

  def update_localidad_d
    @localidad_destino = params[:localidad_id]
  end  

  def trip_params
    params.require(:trip).permit(:localidad_origen, :localidad_destino, :tipo_viaje, :created_at, :updated_at, :commission_id)
  end
end
