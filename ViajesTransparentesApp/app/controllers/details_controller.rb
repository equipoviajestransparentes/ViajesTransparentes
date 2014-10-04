class DetailsController < ApplicationController
  before_action :set_detail, only: [:show, :edit, :update, :destroy]

  # GET /details
  # GET /details.json
  def index
    @details = Detail.all
  end

  # GET /details/1
  # GET /details/1.json
  def show
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@public_officer_nombre = @public_officer.full_name
		@commission = @public_officer.commissions.find(params[:commission_id])
		@viaje = @commission.trips.find(params[:id])
		@detalle = @viaje.detail
		@tema = TviajeCat.find(@detalle.id_tema_viaje).tema
		@tipoViaje = TipoPasajeCatalogo.find(@detalle.tipo_pasaje).tipo_pasaje
		@tipoV = TipoViajeCatalogo.find(@viaje.tipo_viaje).tipo_viaje
		@vuelo = Flight.find(@detalle.id)
		@id_localidad_destino = @viaje.localidad_destino
		
			@aerolineaOrigen = @vuelo.linea_origen
			@vueloOrigen = @vuelo.vuelo_origen
			@aerolineaDestino = @vuelo.linea_regreso
			@vueloDestino = @vuelo.vuelo_regreso
		@gastos = @viaje.expense
		@idMoneda = @viaje.expense.id_moneda
		@moneda = MonedaCatalogo.find(@idMoneda).moneda
		
		@pais = LocalidadesCatalogo.find(@id_localidad_destino).pais
		@estado = LocalidadesCatalogo.find(@id_localidad_destino).estado
		@ciudad = LocalidadesCatalogo.find(@id_localidad_destino).ciudad
  end

  # GET /details/new
  def new
    @public_officer = PublicOfficer.find(params[:public_officer_id])
    @commission = @public_officer.commissions.find(params[:commission_id])
    @trip = @commission.trips.find(params[:trip_id])
    @detail = Detail.new
  end

  # GET /details/1/edit
  def edit
  end

  # POST /details
  # POST /details.json
  def create

    @public_officer = PublicOfficer.find(params[:public_officer_id])
    @commission = @public_officer.commissions.find(params[:commission_id])
    @trip = @commission.trips.find(params[:trip_id])
    @detail = Detail.create(params[:detail])
    @trip.detail = @detail

    respond_to do |format|
      if @detail.save
        format.html { redirect_to new_public_officer_commission_trip_gasto_path(@public_officer, @commission, @trip), notice: 'Detail was successfully created.' }
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /details/1
  # PATCH/PUT /details/1.json
  def update
    respond_to do |format|
      if @detail.update(detail_params)
        format.html { redirect_to @detail, notice: 'Detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail }
      else
        format.html { render :edit }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to details_url, notice: 'Detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
      @detail = Detail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_params
      params[:detail]
    end
end
