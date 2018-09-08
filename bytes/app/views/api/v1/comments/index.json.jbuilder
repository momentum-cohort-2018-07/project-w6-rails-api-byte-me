json.array! @bytes do |byte|
    json.extract! byte, :id, :body, :user_id, :byte_id
end