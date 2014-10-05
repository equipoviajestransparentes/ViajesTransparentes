class CommissionsController < ApplicationController
	# GET /commissions
	# GET /commissions.json
	def index
		@commissions = Commission.all

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @commissions }
		end
	end

	# GET /commissions/1
	# GET /commissions/1.json
	def show
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commissions = @public_officer.commissions.all
		@commission = @public_officer.commissions.find(params[:id])
		@trips = @commission.trips.all

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @commission }
		end
	end

	# GET /commissions/new
	# GET /commissions/new.json
	def new
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commissions = @public_officer.commissions.all
		@commission = @public_officer.commissions.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @commission }
		end
	end

	# GET /commissions/1/edit
	def edit
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commissions = @public_officer.commissions.all
		@commission = @public_officer.commissions.find(params[:id])
		@trips = @commission.trips.all
	end

	# POST /commissions
	# POST /commissions.json
	def create
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commission = @public_officer.commissions.new(commission_params)

		respond_to do |format|
			if @commission.save
				format.html { redirect_to public_officer_commission_path(@public_officer, @commission), notice: 'Commission was successfully created.' }
				format.json { render json: @commission, status: :created, location: @commission }
			else
				format.html { render action: "new" }
				format.json { render json: @commission.errors, status: :unprocessable_entity }
			end
		end
	end

	def liberar_comision
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commission = @public_officer.commissions.find(params[:commission_id])
		@commission.estatus_comision = "T"
		@commission.save
		redirect_to new_public_officer_commission_path(@public_officer)
	end

	# PUT /commissions/1
	# PUT /commissions/1.json
	def update
		@public_officer = PublicOfficer.find(params[:public_officer_id])
		@commission = @public_officer.commissions.find(params[:id])

		respond_to do |format|
			if @commission.update_attributes(params[:commission])
				format.html { redirect_to public_officer_commission_path(@public_officer, @commission), notice: 'Commission was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @commission.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /commissions/1
	# DELETE /commissions/1.json
	def destroy
		@commission = Commission.find(params[:id])
		@commission.destroy

		respond_to do |format|
			format.html { redirect_to commissions_url }
			format.json { head :no_content }
		end
	end
		
	def commission_params
		params.require(:commission).permit(:id_mec_origen, :id_tipo_comision, :id_representacion, :fechainicio_com, :fechafin_com, :inst_genera,
																			 :ur, :consecutivo, :acuerdo, :oficio, :motivo, :comprobado_total, :sin_comprobar_total, :viatico_devuelto_total,
																			 :estatus_comision, :created_at, :updated_at, :public_officer_id, :resultado, :observaciones)
	end

end