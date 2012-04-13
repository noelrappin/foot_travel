module Presenters
  class FriendPresenter

    attr_accessor :population, :current_friend 

    def initialize(users, current_user)
      @current_friend = current_user.extend(Roles::Friend)
      @population = []
      users.each do |user|
        next if user == current_user
        @population << (user.extend(Roles::Friend))
      end
      @population = @population.sort_by(&:sort_name)
    end

  end
end