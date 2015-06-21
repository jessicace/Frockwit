class CreateInstagramAccounts < ActiveRecord::Migration
  def change
    create_table :instagram_accounts do |t|
      t.text :account_name                # Must have account name.
      t.integer :followers                # Number of followers.
      t.timestamps null: false
    end
  end
end
