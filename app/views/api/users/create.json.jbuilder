if @success
  json.user do
    json.email @user.email
    json.username @user.username
    json.uuid @user.uuid
  end
end
