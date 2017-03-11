json.extract! login, :id, :password, :first_name, :last_name, :LoginTypes, :active_flag, :created_at, :updated_at
json.url login_url(login, format: :json)
