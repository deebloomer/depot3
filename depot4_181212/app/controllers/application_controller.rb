#---
class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery

  # ...

  protected
  # Returns the currently logged in user or nil if there isn't one
  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by_id(session[:user_id])
  end

  helper_method :current_user

  def authenticate
    logged_in? ? true : access_denied
  end

  def logged_in?
    current_user.is_a? User
  end

  helper_method :logged_in?

  def access_denied
    redirect_to login_path, :notice => "Please log in to continue" and return false
  end

  helper_method :is_admin?

  def is_admin?
    if current_user and (current_user.admin == true)
      return true
    else
      access_denied
    end
  end

  private
  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

    def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end
end