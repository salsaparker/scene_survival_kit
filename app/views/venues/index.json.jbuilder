json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :street_address, :city, :state, :zip_code
  json.url venue_url(venue, format: :json)
end
