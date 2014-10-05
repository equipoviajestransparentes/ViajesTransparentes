class SearchvsController < ApplicationController
  before_action :set_searchv, only: [:show, :edit, :update, :destroy]

  # GET /searchvs
  # GET /searchvs.json
  def index
    @searchvs = Searchv.all
  end

  # GET /searchvs/1
  # GET /searchvs/1.json
  def show
  end

  # GET /searchvs/new
  def new
    @searchv = Searchv.new
  end

  # GET /searchvs/1/edit
  def edit
  end

  # POST /searchvs
  # POST /searchvs.json
  def create
    @searchv = Searchv.new(searchv_params)

    respond_to do |format|
      if @searchv.save
        format.html { redirect_to @searchv, notice: 'Searchv was successfully created.' }
        format.json { render :show, status: :created, location: @searchv }
      else
        format.html { render :new }
        format.json { render json: @searchv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searchvs/1
  # PATCH/PUT /searchvs/1.json
  def update
    respond_to do |format|
      if @searchv.update(searchv_params)
        format.html { redirect_to @searchv, notice: 'Searchv was successfully updated.' }
        format.json { render :show, status: :ok, location: @searchv }
      else
        format.html { render :edit }
        format.json { render json: @searchv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searchvs/1
  # DELETE /searchvs/1.json
  def destroy
    @searchv.destroy
    respond_to do |format|
      format.html { redirect_to searchvs_url, notice: 'Searchv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_searchv
      @searchv = Searchv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def searchv_params
      params.require(:searchv).permit(:inicio_fecha_rango, :fin_fecha_rango, :rango_min_gasto, :rango_max_gasto)
    end
end
