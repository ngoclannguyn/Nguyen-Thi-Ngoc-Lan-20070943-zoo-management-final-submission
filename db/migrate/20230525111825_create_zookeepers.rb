class CreateZookeepers < ActiveRecord::Migration[7.0]
  def change
    create_table :zookeepers do |t|
      t.string :name
      t.string :dateofbirth

      t.timestamps
    end
  end
end
