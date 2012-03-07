class PurchaseExtra < ActiveRecord::Base
  include ExtendedPriceCalculator

  belongs_to :purchase
  belongs_to :extra, :polymorphic => true
end
