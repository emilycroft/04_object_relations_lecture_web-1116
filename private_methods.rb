class User
  attr_writer :password

  def authenticate(password_try)
    password == password_try
  end

  private

  def password
    puts 'Calling the password method'
    @password
  end
end

user = User.new
user.password = 'fido'

user.authenticate('fidoasdf') #=> false

user.password # will throw an error
