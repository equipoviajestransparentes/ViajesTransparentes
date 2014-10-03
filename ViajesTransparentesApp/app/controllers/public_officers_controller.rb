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
		@ciudadano = Ciudadano.new
		@commissions = @public_officer.commissions.all		
		@public_officer_nombre = @public_officer.full_name
		
		hash_overview = {
			'text' => {
				'headline' => '<span class="vco-test">Historial de Viajes</span>',
				'text' => "<center><span>"+ @public_officer_nombre +"</span></center>"
			},
			'type' => "overview"
		}
		@list_slides ||=  []
		@list_slides << hash_overview 



		@commissions.each do |commission|
			@trips = commission.trips.all
			@trips.each do |trip|
				
				@id_localidad_destino = trip.localidad_destino
				@latitud = LocalidadesCatalogo.find(@id_localidad_destino).latitud_ciudad
				@longitud = LocalidadesCatalogo.find(@id_localidad_destino).longitud_ciudad
				@evento = trip.detail.evento
				@fhinicio = trip.detail.fechainicio_part
				@pais = LocalidadesCatalogo.find(@id_localidad_destino).pais
				@estado = LocalidadesCatalogo.find(@id_localidad_destino).estado
				@ciudad = LocalidadesCatalogo.find(@id_localidad_destino).ciudad
				@gastoTot = trip.expense.gasto_viatico
				@idMoneda = trip.expense.id_moneda
				@moneda = MonedaCatalogo.find(@idMoneda).moneda
								
				hash_slide = {
					'location' => {
						'lat' => @latitud,
						'lon' => @longitud
					},
					'text' => {
						'headline' => "<a href=#>" + @evento + "</a>",
						'text' => "<span>Fecha:<br>"+@fhinicio.to_s+"</span><br><span>Destino:<br>"+ @pais +"<br> "+ @estado +"<br> "+ @ciudad + "</span><br><span>Gasto total: <br>"+@gastoTot.to_s+ @moneda+"</span>"
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

	def graficas
	
		@public_officer = PublicOfficer.find(params[:public_officer_id])
	
		@commissions = @public_officer.commissions.all		
		@public_officer_nombre = @public_officer.full_name

		@list_labelsMXN ||= [""]
		@list_dataMXN ||= ["0"]
		@list_labelsUSD ||= [""]
		@list_dataUSD ||= ["0"]
				
		@commissions.each do |commission|
			@trips = commission.trips.all
			@trips.each do |trip|
				
				@id_localidad_destino = trip.localidad_destino
				@pais = LocalidadesCatalogo.find(@id_localidad_destino).pais
				@estado = LocalidadesCatalogo.find(@id_localidad_destino).estado
				@ciudad = LocalidadesCatalogo.find(@id_localidad_destino).ciudad
				@gastoTot = trip.expense.gasto_viatico
				@idMoneda = trip.expense.id_moneda
				puts "Moneda ------------------"
				puts @idMoneda
				
				if @idMoneda == 1 then
					label = @pais + "-"+ @estado
					dato = @gastoTot
					@list_labelsMXN << label
					@list_dataMXN << dato
				else
					label2 = @pais + "-"+ @estado
					dato2 = @gastoTot
					@list_labelsUSD << label2
					@list_dataUSD << dato2 
				end
			end
	  	end
		
		@list_datasetMXN ||= []
		@list_datasetUSD ||= []
		
		hash_dataset_MXN = {
			'fillColor' => "rgba(220,220,220,0.5)",
			'strokeColor' => "rgba(220,220,220,0.8)",
			'highlightFill' => "rgba(220,220,220,0.75)",
			'highlightStroke' => "rgba(220,220,220,1)",
			'data' => @list_dataMXN
		}
		
		hash_dataset_USD = {
			'fillColor' => "rgba(220,220,220,0.5)",
			'strokeColor' => "rgba(220,220,220,0.8)",
			'highlightFill' => "rgba(220,220,220,0.75)",
			'highlightStroke' => "rgba(220,220,220,1)",
			'data' => @list_dataUSD
		}

		@list_datasetMXN << hash_dataset_MXN
		@list_datasetUSD << hash_dataset_USD

		@hash_completoMXN = {
			'labels' => @list_labelsMXN,
			'datasets' => @list_datasetMXN
		}
		
		@hash_completoUSD = {
			'labels' => @list_labelsUSD,
			'datasets' => @list_datasetUSD
		}
	end
	
	def public_officer_params
		params.require(:public_officer).permit( :id_cargo, :id_cargo_superior, :id_puesto, :id_unidad_adm, :id_institucion, :id_tipo_personal,
																						:nombre, :ap_paterno, :ap_materno, :correo_electronico, :gastos_comprobados_total, :gastos_sin_comprobar_total,
																						:costo_total, :viaticos_devueltos_total, :created_at, :updated_at)
	end
	
end
