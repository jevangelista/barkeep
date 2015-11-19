class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.references :emotion_id
      t.string :name
      t.string :image
      t.text :ingredients, array: true, default: [] 
      t.text :instructions

      t.timestamps null: false
    end
  end
end
