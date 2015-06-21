class CreateFacebookAccounts < ActiveRecord::Migration
  def change
    create_table :facebook_accounts do |t|
      t.text :account_name
      t.integer :number_of
      t.timestamps null: false
    end
  end
end
