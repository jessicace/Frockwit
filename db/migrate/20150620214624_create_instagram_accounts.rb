class CreateInstagramAccounts < ActiveRecord::Migration
  def change
    create_table :instagram_accounts do |t|

      t.timestamps null: false
    end
  end
end
