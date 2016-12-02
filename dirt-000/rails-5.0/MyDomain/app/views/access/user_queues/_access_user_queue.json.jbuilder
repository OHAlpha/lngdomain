json.extract! access_user_queue, :id, :unom, :email, :salt, :iterations, :created_at, :updated_at
json.url access_user_queue_url(access_user_queue, format: :json)