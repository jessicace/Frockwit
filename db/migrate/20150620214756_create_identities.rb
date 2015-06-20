class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.text :name                  # Name of identity, e.g. Influencer
      t.timestamps null: false
    end
  end
end
