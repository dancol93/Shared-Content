def create_user(email, password, name, last_name, dni)
  User.find_or_create_by({email: email}) do |user|
    user.password = password
    user.name = name
    user.last_name = last_name
    user.dni = dni
  end
end
