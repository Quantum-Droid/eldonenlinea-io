class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :exterior_number
      t.string :interior_number
      t.string :area
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.references :restaurant, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
