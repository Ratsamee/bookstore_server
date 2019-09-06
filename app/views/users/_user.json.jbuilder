json.extract! user, :id, :email, :password_digest, :full_name, :address, :shipping_address, :created_at, :updated_at
json.url user_url(user, format: :json)
