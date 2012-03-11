class OpenActiveModel < OpenStruct

  def self.find(id)
    new(:id => id)
  end

  def self.create(options = {})
    result = new
    result.update_attributes(options)
    result
  end

  def update_attributes(options = {})
    return if options.blank?
    options.each do |key, value|
      @table[key.to_sym] = value
      new_ostruct_member(key)
    end
  end

  # def method_missing(method_name)
  #   method_parts = method_name.split("_")
  #   if method_parts[-1] == "id"
  #     send(method_parts[0..-2])
  #   elsif method_parts[-1] == "type"
        
  #   else
  #     super
  #   end
  # end

end