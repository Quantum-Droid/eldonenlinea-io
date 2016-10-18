class CreateOrdersTorta < ActiveRecord::Migration
  def change
    create_table :orders_torta, id: false do |t|
      t.references :tortum, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
    end
  end
end
