json.array!(@musicians) do |musician|
  json.extract! musician, :id, :first_name, :last_name, :phone_number, :instrument
  json.url musician_url(musician, format: :json)
end
