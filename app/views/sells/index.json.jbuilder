json.array!(@sells) do |sell|
  json.extract! sell, :id, :product_id, :cantidad, :precio_total
  json.url sell_url(sell, format: :json)
end
