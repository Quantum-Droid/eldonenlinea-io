class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.decimal :amount
      t.references :customer, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
