json.extract! access_user, :id, :unom, :email, :salt, :hashkey, :iterations, :passhash, :fnom, :mnoms, :lnom, :created_at, :updated_at
json.url access_user_url(access_user, format: :json)