require 'fast_spec_helper'
require 'services/date_range_service'

class DummyDateRange < OpenStruct
  include DateRangeService
end  

describe DateRangeService do
  
  it "can tell about missing dates" do
    DummyDateRange.new(:start_date => Date.today, 
      :end_date => Date.today).should_not be_missing_dates 
    DummyDateRange.new(:start_date => nil, :end_date => nil).should be_missing_dates
  end

  it "calculates length" do
    DummyDateRange.new(:start_date => Date.today, :end_date => Date.today + 1).days_long.should == 1
    DummyDateRange.new(:start_date => Date.today, :end_date => Date.today + 2).date_range.should == (1 .. 2)
    DummyDateRange.new(:start_date => Date.today, :end_date => Date.today + 2).length_array.should == [1, 2]
  end

end
  