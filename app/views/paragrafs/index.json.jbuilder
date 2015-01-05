json.array!(@paragrafs) do |paragraf|
  json.extract! paragraf, :id, :title, :body, :staff_id, :article_id, :act_id
  json.url paragraf_url(paragraf, format: :json)
end
