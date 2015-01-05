json.array!(@clips) do |clip|
  json.extract! clip, :id, :adress, :act_id
  json.url clip_url(clip, format: :json)
end
