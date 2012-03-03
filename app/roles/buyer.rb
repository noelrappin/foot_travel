module Buyer
  
  def purchase(purchasable, purchase_class = Purchase)
    purchases << purchase_class.new(:purchasable => purchasable)  
  end
 
  def has_purchased?(purchasable)
    purchases.map(&:purchasable).include?(purchasable)
  end

end