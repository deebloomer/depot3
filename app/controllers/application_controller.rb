#---
class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  private

<<<<<<< HEAD


  def current_cart
    Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
=======
  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
>>>>>>> 3f50ff0523676a66f7e9d282b6aad397067975bd
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

  # ...

  protected

  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end
end