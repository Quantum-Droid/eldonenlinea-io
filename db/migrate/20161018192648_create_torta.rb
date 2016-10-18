class CreateTorta < ActiveRecord::Migration
  def change
    create_table :torta do |t|
      t.string :name
      t.decimal :price

      t.timestamps null: false
    end
  end
end
