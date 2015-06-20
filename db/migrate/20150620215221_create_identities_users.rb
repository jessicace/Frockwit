class CreateIdentitiesUsers < ActiveRecord::Migration
  def change
    create_table :identities_users do |t|
      t.references :identity, :user
    end
  end
end
