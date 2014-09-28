class ViajesInicialController < ApplicationController
	before_action :set_viaje_inicial, only: [:show, :edit, :update, :destroy]

	def index

		@url_principal =  'http://localhost:3000/'
		@url_objeto = 'public_officers/'
		@url_accion = '/commissions/new'

		@mes_antes = Date.today - 1.month
		@estatus_liberado = "L"
		@commissions = Commission.where(["estatus_comision = ? and fechafin_com >= ?", @estatus_liberado, @mes_antes])

		hash_overview = {
			'text' => {
				'headline' => "<span class=\"vco-test\">MENSAJE DE BIENVENIDA</span>",
				'text' => "<center><span>Continuaci&oacute;n del mensaje de bienvenida</span></center>"
			},
			'type' => "overview"
		}

		@list_slides ||=  []
		@list_slides << hash_overview 


	  	@commissions.each do |commission|
			@trips = commission.trips.all
			@public_officer = PublicOfficer.find(commission.public_officer_id)
			@public_officer_nombre = @public_officer.full_name
			@fecha_ini_com = commission.fechainicio_com
			@fecha_fin_com = commission.fechafin_com
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
						'headline' => "<a href=" + @url_principal + @url_objeto + @public_officer.id.to_s + ">" + @public_officer_nombre + "</a><br><small>Evento</small>",
						'text' => "<span class=\"map-ini-fecha\">Fecha: <br>" + @fecha_ini_com.to_s + " - " + @fecha_fin_com.to_s + "</span><br><span clas=\"map-ini-destino\">DESTINO : <br>DESTINO</span><br><span clas=\"map-ini-gasto\">GASTO TOTAL : <br>GASTO-TOTAL</span>"
					}
				}
				@list_slides << hash_slide
			end
	  	end

		hash_storymap = {
			'storymap' => { 
				'slides' => @list_slides
			},
			'width' => 100, 'height' => 300
		}
		
		puts hash_storymap.to_json		

  		render :json => hash_storymap
  	end
end