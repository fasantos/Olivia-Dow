json.array!(@performances) do |performance|
  json.extract! performance, :id, :title, :poster
  json.url performance_url(performance, format: :json)
end
