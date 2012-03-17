class Purchase < ActiveRecord::Base
  include LineItemAggregator

  belongs_to :buyer, :polymorphic => true
  belongs_to :purchasable, :polymorphic => true
  has_many :purchase_extras
end
