class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.integer :numberofvisitor

      t.timestamps
    end
  end
end
