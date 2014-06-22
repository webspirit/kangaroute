json.array!(@routes) do |route|
  json.extract! route, :id, :departure_address, :arrival_address, :departure_lat, :departure_lng, :arrival_lat, :arrival_lng, :departure_distance_range, :arrival_distance_range, :start_time, :time_range_from, :time_range_to, :active, :user_id
  json.url route_url(route, format: :json)
end
