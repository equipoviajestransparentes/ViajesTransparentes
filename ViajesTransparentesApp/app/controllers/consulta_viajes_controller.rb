class ConsultaViajesController < ApplicationController
  before_action :set_consulta_viaje, only: [:show, :edit, :update, :destroy]

  # GET /consulta_viajes
  # GET /consulta_viajes.json
  def index
    @consulta_viajes = ConsultaViaje.all
  end

  # GET /consulta_viajes/1
  # GET /consulta_viajes/1.json
  def show
  end

  # GET /consulta_viajes/new
  def new
    @consulta_viaje = ConsultaViaje.new
  end

  # GET /consulta_viajes/1/edit
  def edit
  end

  # POST /consulta_viajes
  # POST /consulta_viajes.json
  def create
    @consulta_viaje = ConsultaViaje.new(consulta_viaje_params)

    respond_to do |format|
      if @consulta_viaje.save
        format.html { redirect_to @consulta_viaje, notice: 'Consulta viaje was successfully created.' }
        format.json { render :show, status: :created, location: @consulta_viaje }
      else
        format.html { render :new }
        format.json { render json: @consulta_viaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta_viajes/1
  # PATCH/PUT /consulta_viajes/1.json
  def update
    respond_to do |format|
      if @consulta_viaje.update(consulta_viaje_params)
        format.html { redirect_to @consulta_viaje, notice: 'Consulta viaje was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulta_viaje }
      else
        format.html { render :edit }
        format.json { render json: @consulta_viaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta_viajes/1
  # DELETE /consulta_viajes/1.json
  def destroy
    @consulta_viaje.destroy
    respond_to do |format|
      format.html { redirect_to consulta_viajes_url, notice: 'Consulta viaje was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta_viaje
      @consulta_viaje = ConsultaViaje.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulta_viaje_params
      params.require(:consulta_viaje).permit(:fecha_inicio, :fecha_fin, :public_officer_id, :min_precio, :max_precio)
    end
end
