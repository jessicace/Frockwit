class CreateFacebookAccounts < ActiveRecord::Migration
  def change
    create_table :facebook_accounts do |t|

      t.timestamps null: false
    end
  end
end
