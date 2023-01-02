json.extract! user, :id, :name, :is_online, :created_at, :updated_at
json.url user_url(user, format: :json)
