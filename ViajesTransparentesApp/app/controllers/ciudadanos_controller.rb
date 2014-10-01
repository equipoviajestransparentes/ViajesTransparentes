class CiudadanosController < ApplicationController
  before_action :set_ciudadano, only: [:show, :edit, :update, :destroy]

  # GET /ciudadanos
  # GET /ciudadanos.json
  def index
    @ciudadanos = Ciudadano.all
  end

  # GET /ciudadanos/1
  # GET /ciudadanos/1.json
  def show
  end

  # GET /ciudadanos/new
  def new
	@public_officer = PublicOfficer.find(params[:id])
    @ciudadano = Ciudadano.new
  end

  # GET /ciudadanos/1/edit
  def edit
  end

  # POST /ciudadanos
  # POST /ciudadanos.json
  def create
    @ciudadano = Ciudadano.new(ciudadano_params)

    respond_to do |format|
      if @ciudadano.save
        format.html { redirect_to @ciudadano, notice: 'Ciudadano was successfully created.' }
        format.json { render :show, status: :created, location: @ciudadano }
      else
        format.html { render :new }
        format.json { render json: @ciudadano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ciudadanos/1
  # PATCH/PUT /ciudadanos/1.json
  def update
    respond_to do |format|
      if @ciudadano.update(ciudadano_params)
        format.html { redirect_to @ciudadano, notice: 'Ciudadano was successfully updated.' }
        format.json { render :show, status: :ok, location: @ciudadano }
      else
        format.html { render :edit }
        format.json { render json: @ciudadano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ciudadanos/1
  # DELETE /ciudadanos/1.json
  def destroy
    @ciudadano.destroy
    respond_to do |format|
      format.html { redirect_to ciudadanos_url, notice: 'Ciudadano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ciudadano
      @ciudadano = Ciudadano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ciudadano_params
      params.require(:ciudadano).permit(:id_correo, :nombre, :ap_paterno, :ap_materno)
    end
end
