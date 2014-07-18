json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name
  json.url restaurant_url(restaurant, format: :json)
end
