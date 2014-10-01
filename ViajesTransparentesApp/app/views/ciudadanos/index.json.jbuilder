json.array!(@ciudadanos) do |ciudadano|
  json.extract! ciudadano, :id, :id_correo, :nombre, :ap_paterno, :ap_materno
  json.url ciudadano_url(ciudadano, format: :json)
end
