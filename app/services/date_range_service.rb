module DateRangeService
  
  def missing_dates?
    start_date.blank? || end_date.blank?
  end
  
end 