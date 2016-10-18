class Order < ActiveRecord::Base
  belongs_to :customer
  belongs_to :employee
  has_and_belongs_to_many :torta
end
