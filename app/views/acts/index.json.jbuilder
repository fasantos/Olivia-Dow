json.array!(@acts) do |act|
  json.extract! act, :id, :name, :performance_id
  json.url act_url(act, format: :json)
end
