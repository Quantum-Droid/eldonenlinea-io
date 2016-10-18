class CreateTortaIngredients < ActiveRecord::Migration
  def change
    create_table :torta_ingredients, id: false do |t|
      t.references :ingredient, index: true, foreign_key: true
      t.references :tortum, index: true, foreign_key: true
    end
  end
end
