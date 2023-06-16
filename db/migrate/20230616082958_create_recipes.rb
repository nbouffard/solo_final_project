class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :ingredients
      t.string :category
      t.string :cuisine
      t.integer :prep_time
      t.integer :total_time
      t.string :difficulty
      t.integer :servings

      t.timestamps
    end
  end
end
