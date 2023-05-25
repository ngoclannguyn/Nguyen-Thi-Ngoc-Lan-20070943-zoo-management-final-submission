class CreateVisitors < ActiveRecord::Migration[7.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :gender
      t.string :phonenumber
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
