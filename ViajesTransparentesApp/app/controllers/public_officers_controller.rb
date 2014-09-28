class PublicOfficersController < ApplicationController
	# GET /public_officers
	# GET /public_officers.json
	def index
		@public_officers = PublicOfficer.all

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @public_officers }
		end
	end

	# GET /public_officers/1
	# GET /public_officers/1.json
	def show
		@public_officer = PublicOfficer.find(params[:id])
		hash_overview = {
			'text' => {
				'headline' => '<span class="vco-test">Historia de Viajes</span>',
				'text' => "<center><span>Continuacion del mensaje de bienvenida</span></center>"
			},
			'type' => "overview"
		}
		@list_slides ||=  []
		@list_slides << hash_overview 

		@commissions = @public_officer.commissions.all		
		@public_officer_nombre = @public_officer.full_name

		@commissions.each do |commission|
			@trips = commission.trips.all
			@trips.each do |trip|
				@id_localidad_destino = trip.localidad_destino
				@latitud = LocalidadesCatalogo.find(@id_localidad_destino).latitud_ciudad
				@longitud = LocalidadesCatalogo.find(@id_localidad_destino).longitud_ciudad

				hash_slide = {
					'location' => {
						'lat' => @latitud,
						'lon' => @longitud
					},
					'text' => {
						'headline' => "<a href=#>" + @public_officer_nombre + "</a><br><small>Evento</small>",
						'text' => "<span class=\"map-ini-fecha\">Fecha: <br> HOLAAA </span><br><span clas=\"map-ini-destino\">DESTINO : <br>DESTINO</span><br><span clas=\"map-ini-gasto\">GASTO TOTAL : <br>GASTO-TOTAL</span>"
					}
				}
				@list_slides << hash_slide
			end
	  	end
	  	@hash_storymap = {
			"storymap" => { 
				"slides" => @list_slides
			},
			"width" => 100, "height" => 300
		}
	end

	# GET /public_officers/new
	# GET /public_officers/new.json
	def new
		@public_officer = PublicOfficer.new

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @public_officer }
		end
	end

	# GET /public_officers/1/edit
	def edit
		@public_officer = PublicOfficer.find(params[:id])
	end

	# POST /public_officers
	# POST /public_officers.json
	def create
		@public_officer = PublicOfficer.new(params[:public_officer])

		respond_to do |format|
			if @public_officer.save
				format.html { redirect_to @public_officer, notice: 'Public officer was successfully created.' }
				format.json { render json: @public_officer, status: :created, location: @public_officer }
			else
				format.html { render action: "new" }
				format.json { render json: @public_officer.errors, status: :unprocessable_entity }
			end
		end
	end

	# PUT /public_officers/1
	# PUT /public_officers/1.json
	def update
		@public_officer = PublicOfficer.find(params[:id])

		respond_to do |format|
			if @public_officer.update_attributes(params[:public_officer])
				format.html { redirect_to @public_officer, notice: 'Public officer was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: "edit" }
				format.json { render json: @public_officer.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /public_officers/1
	# DELETE /public_officers/1.json
	def destroy
		@public_officer = PublicOfficer.find(params[:id])
		@public_officer.destroy

		respond_to do |format|
			format.html { redirect_to public_officers_url }
			format.json { head :no_content }
		end
	end

	def public_officer_params
		params.require(:public_officer).permit( :id_cargo, :id_cargo_superior, :id_puesto, :id_unidad_adm, :id_institucion, :id_tipo_personal,
																						:nombre, :ap_paterno, :ap_materno, :correo_electronico, :gastos_comprobados_total, :gastos_sin_comprobar_total,
																						:costo_total, :viaticos_devueltos_total, :created_at, :updated_at)
	end
end
