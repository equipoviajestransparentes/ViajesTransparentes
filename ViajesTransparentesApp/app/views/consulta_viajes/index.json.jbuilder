json.array!(@consulta_viajes) do |consulta_viaje|
  json.extract! consulta_viaje, :id, :fecha_inicio, :fecha_fin, :public_officer_id, :min_precio, :max_precio
  json.url consulta_viaje_url(consulta_viaje, format: :json)
end
