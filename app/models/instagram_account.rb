class InstagramAccount < ActiveRecord::Base

  belongs_to :user
  validates :account_name, presence: true 

end
