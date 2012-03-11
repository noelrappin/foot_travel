module Friend

  def full_name
    "#{first_name} #{last_name}"
  end

  def sort_name
    [last_name, first_name]
  end

  def befriend(other)
    Relationship.create(:sender => self, :receiver => other)
  end

  def all_friends   
    friends.map(&:receiver) + friends_received.map(&:sender)  
  end

  def friends_with?(other)  
    all_friends.include?(other)
  end

  def status_with(other)
    if friends_with?(other) then "Friends" else "No" end
  end

end