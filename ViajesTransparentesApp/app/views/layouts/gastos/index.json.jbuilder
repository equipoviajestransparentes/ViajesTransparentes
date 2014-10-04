json.array!(@gastos) do |gasto|
  json.extract! gasto, :id
  json.url gasto_url(gasto, format: :json)
end
