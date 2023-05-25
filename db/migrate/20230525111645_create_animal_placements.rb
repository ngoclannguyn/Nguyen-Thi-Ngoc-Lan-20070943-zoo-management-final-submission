class CreateAnimalPlacements < ActiveRecord::Migration[7.0]
  def change
    create_table :animal_placements do |t|
      t.string :room
      t.string :location

      t.timestamps
    end
  end
end
