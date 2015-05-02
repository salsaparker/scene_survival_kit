json.array!(@visual_artists) do |visual_artist|
  json.extract! visual_artist, :id, :first_name, :last_name, :type, :phone_number, :email_address
  json.url visual_artist_url(visual_artist, format: :json)
end
