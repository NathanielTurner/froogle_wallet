json.array!(@users) do |user|
  json.extract! user, :id, :ballance, :name, :password
  json.url user_url(user, format: :json)
end