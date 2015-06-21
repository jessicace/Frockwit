class User < ActiveRecord::Base
  
  has_and_belongs_to_many :identities
  has_and_belongs_to_many :campaigns
  has_and_belongs_to_many :wanted_connections # The identities the User wants to be connected to.

  has_one :twitter_account
  has_one :instagram_account
  has_one :facebook_account
  has_one :youtube_account
  

  # Contact details must be supplied
  validates :contact_name, :email, presence: true

end
