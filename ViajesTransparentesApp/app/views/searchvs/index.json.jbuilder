json.array!(@searchvs) do |searchv|
  json.extract! searchv, :id, :inicio_fecha_rango, :fin_fecha_rango, :rango_min_gasto, :rango_max_gasto
  json.url searchv_url(searchv, format: :json)
end
