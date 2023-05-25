class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.date :dateofbirth
      t.integer :age
      t.string :characteristic
      t.string :food
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
