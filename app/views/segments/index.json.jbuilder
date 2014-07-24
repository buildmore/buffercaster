json.array!(@segments) do |segment|
  json.extract! segment, :id, :name, :audio_file, :description
  json.url segment_url(segment, format: :json)
end
