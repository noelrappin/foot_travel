class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.references :trip
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
