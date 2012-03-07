class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.references :trip
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
