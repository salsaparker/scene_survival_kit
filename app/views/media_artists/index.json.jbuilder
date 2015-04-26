json.array!(@media_artists) do |media_artist|
  json.extract! media_artist, :id
  json.url media_artist_url(media_artist, format: :json)
end
