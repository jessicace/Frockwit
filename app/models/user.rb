class User < ActiveRecord::Base
  
  has_and_belongs_to_many :identities
  has_and_belongs_to_many :campaigns

  has_one :twitter_account
  has_one :instagram_account
  has_one :facebook_account
  has_one :youtube_account
  has_many :connections

  validates :contact_name
  validates :description
  validates :email
  validates :mobile_number

end
