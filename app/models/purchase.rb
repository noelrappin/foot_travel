class Purchase < ActiveRecord::Base
  belongs_to :buyer, :polymorphic => true
  belongs_to :purchasable, :polymorphic => true
end
