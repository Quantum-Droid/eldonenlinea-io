class Tortum < ActiveRecord::Base
	has_and_belongs_to_many :orders
	has_and_belongs_to_many :ingredients
end
