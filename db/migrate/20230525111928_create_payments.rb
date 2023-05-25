class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :amount
      t.string :paymentmethod
      t.date :paymentdate

      t.timestamps
    end
  end
end
