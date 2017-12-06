class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.references :standing_order, foreign_key: true, null: true

    end
  end
end
