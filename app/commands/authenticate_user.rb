class AuthenticateUser
  prepend SimpleCommand

  require 'json'

  def initialize(email, password)
    @email = email
    @password = password
  end

  def call
    if user
      order = check_order(user)
      JsonWebToken.encode(user_id: user.id, order_id: order.id)
    end
  end

  private
  
  attr_reader :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)
    errors.add :user_authentication, 'invalid credentials'
    nil
  end

  def check_order(user)
    order = Order.new(user_id: user.id, total_value: 0.0, subtotal: 0.0)
    return order if order.save!
    errors.add :user_authentication, 'error retrieving cart'
    nil
  end
end