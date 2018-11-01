class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.float :total_value
      t.float :subtotal
      t.references :order_status, foreign_key: true
      t.timestamps
    end
  end
end
