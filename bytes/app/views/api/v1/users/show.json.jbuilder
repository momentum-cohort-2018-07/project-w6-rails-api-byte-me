
json.links do
    json.self api_v1_user_url(@user)
    json.list api_v1_users_url
    json.update do
      json.method "PUT"
      json.href api_v1_user_url(@user)
    end
    json.delete do
      json.method "DELETE"
      json.href api_v1_user_url(@user)
    end
  end
  json.data do
    json.id @user.id
    json.attributes do
      json.name @user.name
      json.email @user.email
      json.username @user.username
      json.password_digest @user.password_digest
    end
end