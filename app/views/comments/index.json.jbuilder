json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :email, :body, :article_id
  json.url comment_url(comment, format: :json)
end
