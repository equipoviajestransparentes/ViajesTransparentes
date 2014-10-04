class GastosController < ApplicationController
  before_action :set_gasto, only: [:show, :edit, :update, :destroy]

  # GET /gastos
  # GET /gastos.json
  def index
    @gastos = Gasto.all
  end

  # GET /gastos/1
  # GET /gastos/1.json
  def show
  end

  # GET /gastos/new
  def new
    @public_officer = PublicOfficer.find(params[:public_officer_id])
    @commission = @public_officer.commissions.find(params[:commission_id])
    @commissions = @public_officer.commissions.all
    @trip = @commission.trips.find(params[:trip_id])
    @trips = @commission.trips.all
    @expense = @trip.expense
    @detail = @trip.detail
    @gastos = @trip.gastos.all
    @gasto = @trip.gastos.new
  end

  # GET /gastos/1/edit
  def edit
  end

  # POST /gastos
  # POST /gastos.json
	def create
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commission = @public_officer.commissions.find(params[:commission_id])
		@trip = @commission.trips.find(params[:trip_id])
		@gasto = @trip.gastos.create(gasto_params)

		respond_to do |format|
			if @gasto.save

			@expense = @trip.expense
			if @gasto.id_concepto == 1
				@expense.costo_hotel = @expense.costo_hotel + @gasto.importe
			end
			if @gasto.id_concepto == 2
				@expense.gasto_alimento = @expense.gasto_alimento + @gasto.importe
			end
			if @gasto.id_concepto == 3
				@expense.gasto_pasaje = @expense.gasto_pasaje + @gasto.importe
			end
			if @gasto.id_concepto == 4
				@expense.gasto_otro = @expense.gasto_otro + @gasto.importe
			end
			@expense.gasto_viatico = @expense.gasto_viatico + @gasto.importe
			@expense.save
      @commission.estatus_comision = "capturada"
      @commission.save
        format.html { redirect_to new_public_officer_commission_trip_gasto_path(@public_officer, @commission, @trip), notice: 'Gasto was successfully created.' }
        format.json { render :show, status: :created, location: @gasto }
      else
        format.html { render :new }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastos/1
  # PATCH/PUT /gastos/1.json
  def update
    respond_to do |format|
      if @gasto.update(gasto_params)
        format.html { redirect_to @gasto, notice: 'Gasto was successfully updated.' }
        format.json { render :show, status: :ok, location: @gasto }
      else
        format.html { render :edit }
        format.json { render json: @gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastos/1
  # DELETE /gastos/1.json
  def destroy
    @gasto.destroy
    respond_to do |format|
      format.html { redirect_to gastos_url, notice: 'Gasto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gasto
      @gasto = Gasto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gasto_params
      params[:gasto]
    end
end
