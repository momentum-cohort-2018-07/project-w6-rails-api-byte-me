

json.links do
    json.self api_v1_byte_url(@byte)
    json.list api_v1_bytes_url
    json.update do
      json.method "PUT"
      json.href api_v1_byte_url(@byte)
    end
    json.delete do
      json.method "DELETE"
      json.href api_v1_byte_url(@byte)
    end
  end
  json.data do
    json.id @byte.id
    json.attributes do
      json.body @byte.body
      json.user_id @byte.user_id
    end
end



