class Address < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :employee
  belongs_to :customer
end
