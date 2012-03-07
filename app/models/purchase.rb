class Purchase < ActiveRecord::Base
  include LineItemAggregator
  attr_accessor :lodging

  belongs_to :buyer, :polymorphic => true
  belongs_to :purchasable, :polymorphic => true
  has_many :purchase_extras
end
