json.array!(@products) do |product|
  json.extract! product, :id, :nombre, :cantidad, :precio
  json.url product_url(product, format: :json)
end
