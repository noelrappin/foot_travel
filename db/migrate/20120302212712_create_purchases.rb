class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :buyer_id
      t.string :buyer_type
      t.integer :purchasable_id
      t.string :purchasable_type
      t.date :purchase_date
      t.date :real_travel_date
      t.float :amount
      t.integer :length_of_stay
      t.timestamps
    end

  end
end
