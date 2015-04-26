json.array!(@band_mates) do |band_mate|
  json.extract! band_mate, :id
  json.url band_mate_url(band_mate, format: :json)
end
