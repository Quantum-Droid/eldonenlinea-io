class Employee < ActiveRecord::Base
  belongs_to :restaurant
  has_one :address
  has_many :orders
end
