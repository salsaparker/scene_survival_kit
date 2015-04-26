json.array!(@merch_artists) do |merch_artist|
  json.extract! merch_artist, :id
  json.url merch_artist_url(merch_artist, format: :json)
end
