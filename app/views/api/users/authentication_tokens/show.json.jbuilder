if @success
  json.user do
    json.authentication_token @user.authentication_token
    json.uuid @user.uuid
  end
end
