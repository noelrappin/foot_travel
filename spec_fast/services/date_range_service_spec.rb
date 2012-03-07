require 'fast_spec_helper'
require 'services/date_range_service'

class DummyDateRange < OpenStruct
  attr_accessor :start_date, :end_date
  include DateRangeService
  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end
end  

describe DateRangeService do
  
  it "can tell about missing dates" do
    DummyDateRange.new(Date.today, Date.today).should_not be_missing_dates 
    DummyDateRange.new(nil, nil).should be_missing_dates
  end

  it "calculates length" do
    DummyDateRange.new(Date.today, Date.today + 1).days_long.should == 1
    DummyDateRange.new(Date.today, Date.today + 2).date_range.should == (1 .. 2)
    DummyDateRange.new(Date.today, Date.today + 2).length_array.should == [1, 2]
  end

end
  