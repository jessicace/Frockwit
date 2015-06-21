class CreateYoutubeAccounts < ActiveRecord::Migration
  def change
    create_table :youtube_accounts do |t|
      t.text :account_name
      t.integer :subscribers
      t.timestamps null: false
    end
  end
end
