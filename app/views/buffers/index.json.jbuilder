json.array!(@buffers) do |buffer|
  json.extract! buffer, :id, :name, :episode_file, :description
  json.url buffer_url(buffer, format: :json)
end
