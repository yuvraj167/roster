json.array!(@users) do |user|
  json.extract! user, :id, :name, :emp_id, :mobile_no, :email, :password, :password_confirmation
  json.url user_url(user, format: :json)
end
