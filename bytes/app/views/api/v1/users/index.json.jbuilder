json.array! @bytes do |byte|
    json.extract! byte, :id, :name, :email, :username, :password_digest
end