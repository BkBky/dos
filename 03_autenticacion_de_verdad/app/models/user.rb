class User < ActiveRecord::Base
  #BCrypt es el que encripta el password
  include BCrypt
  # ej. User.authenticate('b@codea.mx', 'qwerty')
  validates :email, uniqueness: true, presence: true 
  validates :password, presence: true
  #El método Password es una clase de BCrypt la cual genera el hash
  def password
    @password ||= Password.new(password_digest)
  end

  def password=(user_password)
    @password = Password.create(user_password)
    self.password_digest = @password
  end  
  
  def self.authenticate(email, user_password)
    user = User.find_by(email: email)
    if user && (user.password == user_password)
      return user
    else
      nil
    end
  end

  
  # def self.authenticate(email, password)
  #   # si el email y el password corresponden a un usuario valido, regresa el usuario
  #   # de otra manera regresa nil
  #   User.find_by(email: email, password: password)
  # end

end