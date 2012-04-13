class PurchaseExtra < ActiveRecord::Base
  include Services::ExtendedPriceCalculator

  belongs_to :purchase
  belongs_to :extra, :polymorphic => true
end
