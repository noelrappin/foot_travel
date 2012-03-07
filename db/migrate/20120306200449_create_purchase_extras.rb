class CreatePurchaseExtras < ActiveRecord::Migration
  def change
    create_table :purchase_extras do |t|
      t.references :purchase
      t.references :extra, :polymorphic => true
      t.integer :unit_count
      t.float :unit_price
      t.timestamps
    end
    add_index :purchase_extras, :purchase_id
    add_index :purchase_extras, :extra_id
  end
end
