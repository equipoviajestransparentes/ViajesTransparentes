class CommissionOfficersController < ApplicationController
  # GET /commission_officers
  # GET /commission_officers.json
  def index
    @commission_officers = CommissionOfficer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @commission_officers }
    end
  end

  # GET /commission_officers/1
  # GET /commission_officers/1.json
  def show
    @commission_officer = CommissionOfficer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @commission_officer }
    end
  end

  # GET /commission_officers/new
  # GET /commission_officers/new.json
  def new
    @public_officer = PublicOfficer.find(params[:public_officer_id])
    @commission_officer = @public_officer.commission_officers.new

    @commission = Commission.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @commission_officer }
    end
  end

  # GET /commission_officers/1/edit
  def edit
    @commission_officer = CommissionOfficer.find(params[:id])
  end

  # POST /commission_officers
  # POST /commission_officers.json
  def create
    @commission_officer = CommissionOfficer.new(params[:commission_officer])

    respond_to do |format|
      if @commission_officer.save
        format.html { redirect_to @commission_officer, notice: 'Commission officer was successfully created.' }
        format.json { render json: @commission_officer, status: :created, location: @commission_officer }
      else
        format.html { render action: "new" }
        format.json { render json: @commission_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /commission_officers/1
  # PUT /commission_officers/1.json
  def update
    @commission_officer = CommissionOfficer.find(params[:id])

    respond_to do |format|
      if @commission_officer.update_attributes(params[:commission_officer])
        format.html { redirect_to @commission_officer, notice: 'Commission officer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @commission_officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commission_officers/1
  # DELETE /commission_officers/1.json
  def destroy
    @commission_officer = CommissionOfficer.find(params[:id])
    @commission_officer.destroy

    respond_to do |format|
      format.html { redirect_to commission_officers_url }
      format.json { head :no_content }
    end
  end
end
