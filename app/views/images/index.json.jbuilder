json.array!(@images) do |image|
  json.extract! image, :id, :adress, :data, :staff_id, :article_id, :album_id
  json.url image_url(image, format: :json)
end
