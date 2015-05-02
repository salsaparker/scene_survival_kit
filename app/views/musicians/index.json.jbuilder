json.array!(@musicians) do |musician|
  json.extract! musician, :id, :first_name, :last_name, :instrument, :email_address, :phone_number
  json.url musician_url(musician, format: :json)
end
