class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :carriage
      t.integer :payment_method
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :status
      t.integer :total_payment

      t.timestamps
    end
  end
end
