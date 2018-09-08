
json.links do
    json.self api_v1_comment_url(@comment)
    json.list api_v1_comments_url
    json.update do
      json.method "PUT"
      json.href api_v1_comment_url(@comment)
    end
    json.delete do
      json.method "DELETE"
      json.href api_v1_comment_url(@comment)
    end
  end
  json.data do
    json.id @comment.id
    json.attributes do
      json.body @comment.body
      json.user_id @comment.user_id
      json.byte_id @comment.byte_id
    end
end