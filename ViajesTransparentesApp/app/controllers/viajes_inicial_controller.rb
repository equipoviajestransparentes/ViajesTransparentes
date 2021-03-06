class ViajesInicialController < ApplicationController
	before_action :set_viaje_inicial, only: [:show, :edit, :update, :destroy]

	def index

		@mes_antes = Date.today - 1.month
		@estatus_liberado = "T"
		@commissions = Commission.where(["estatus_comision = ? and fechafin_com >= ?", @estatus_liberado, @mes_antes])

		hash_overview = {
			'text' => {
				'headline' => "<span class=\"vco-test\">BIENVENIDO</span>",
				'text' => "<center><span>Consulta de los viajes de los servidores públicos</span></center>"
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
				@evento = trip.detail.evento
				@id_localidad_destino = trip.localidad_destino
				@latitud = LocalidadesCatalogo.find(@id_localidad_destino).latitud_ciudad
				@longitud = LocalidadesCatalogo.find(@id_localidad_destino).longitud_ciudad
				@pais = LocalidadesCatalogo.find(@id_localidad_destino).pais
				@estado = LocalidadesCatalogo.find(@id_localidad_destino).estado
				@ciudad = LocalidadesCatalogo.find(@id_localidad_destino).ciudad
				@gastoTot = trip.expense.gasto_viatico
				@idMoneda = trip.expense.id_moneda
				@moneda = MonedaCatalogo.find(@idMoneda).moneda

				url_principal1 = (view_context.generar_link_servidor(@public_officer.id, @public_officer_nombre)).to_s

				hash_slide = {
					'location' => {
						'lat' => @latitud,
						'lon' => @longitud
					},
					'text' => {
						'headline' => url_principal1 + "<br><small>"+ (view_context.generar_link(@public_officer.id, commission.id, trip.id, trip.detail.id, @evento)).to_s + "</small>",
						'text' => "<span class=\"map-ini-fecha\">Fecha: <br>" + @fecha_ini_com.to_s + " - " + @fecha_fin_com.to_s + "</span><br><span clas=\"map-ini-destino\">DESTINO : <br>"+ @pais +" - "+ @estado +" - "+ @ciudad + "</span><br><span clas=\"map-ini-gasto\">GASTO TOTAL : <br>"+@gastoTot.to_s+ @moneda+"</span>"
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