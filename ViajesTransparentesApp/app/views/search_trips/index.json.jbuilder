json.array!(@search_trips) do |search_trip|
  json.extract! search_trip, :id, :inicio_fecha_rango, :fin_fecha_rango, :rango_min_gasto, :rango_max_gasto
  json.url search_trip_url(search_trip, format: :json)
end
