class PurchaseTripContext
  
  attr_accessor :params, :buyer, :purchase_class, 
      :purchasable_class, :extra_class, :lodging_class

  def initialize(params, current_user, purchase_class = Purchase, 
        purchasable_class = Trip, extra_class = Extra, lodging_class = Hotel)
    @params = params
    @buyer = current_user.extend(Buyer)
    @purchase_class = purchase_class
    @purchasable_class = purchasable_class
    @extra_class = extra_class
    @lodging_class = lodging_class
  end

  def find_purchasable(id)
    purchasable_class.find(id)  
  end

  def find_extra(id)
    extra_class.find(id)   
  end

  def find_lodging(id)
    lodging_class.find(id)
  end

  def call
    trip_id = params.delete(:purchasable_id)
    hotel_id = params.delete(:lodging)
    extra_ids = params.delete(:extras)
    result = buyer.purchase(find_purchasable(trip_id), params, purchase_class)
    extra_ids.each do |extra_id|
      buyer.add_to_purchase(result, find_extra(extra_id), 1)
    end
    buyer.add_to_purchase(result, find_lodging(hotel_id), params[:length_of_stay])
    result.save
    result
  end

end
