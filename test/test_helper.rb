<<<<<<< HEAD
=======
ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
>>>>>>> 3f50ff0523676a66f7e9d282b6aad397067975bd

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all
<<<<<<< HEAD
  # ...
  # Add more helper methods to be used by all tests here...
=======

>>>>>>> 3f50ff0523676a66f7e9d282b6aad397067975bd
  def login_as(user)
    session[:user_id] = users(user).id
  end

  def logout
    session.delete :user_id
  end

  def setup
    login_as :one if defined? session
  end
<<<<<<< HEAD
end
=======


  # Add more helper methods to be used by all tests here...
end
>>>>>>> 3f50ff0523676a66f7e9d282b6aad397067975bd
