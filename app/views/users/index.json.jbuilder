json.array!(@users) do |user|
  json.extract! user, :id, :name_first, :name_middle, :name_last, :nickname, :email
  json.url user_url(user, format: :json)
end
