class Route < ActiveRecord::Base
  attr_accessible :finish, :inbound_code, :outbound_code, :return_route, :start
end
