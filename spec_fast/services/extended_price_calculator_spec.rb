require 'services/extended_price_calculator'

class LineItem < OpenStruct
  include ExtendedPriceCalculator
end

describe ExtendedPriceCalculator do
  it "calculates an extended price" do
    line_item = LineItem.new(:unit_count => 3, :unit_price => 400)
    line_item.extended_price.should == 1200
  end
end