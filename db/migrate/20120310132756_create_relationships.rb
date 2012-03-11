class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :sender, :polymorphic => true
      t.references :receiver, :polymorphic => true
      t.string :status
      t.timestamps
    end
  end
end
