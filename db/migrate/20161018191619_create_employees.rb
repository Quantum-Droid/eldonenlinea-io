class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_picture
      t.string :email
      t.string :username
      t.string :password
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
