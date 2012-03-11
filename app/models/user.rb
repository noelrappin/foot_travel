class User < ActiveRecord::Base
  has_many :purchases, :as => :buyer
  has_many :friends, :as => :sender, :class_name => "Relationship"
  has_many :friends_received, :as => :receiver, :class_name => "Relationship"

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
      :first_name, :last_name
end
