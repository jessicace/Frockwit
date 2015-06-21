class CreateUsersWantedConnections < ActiveRecord::Migration
  def change
    create_table :users_wanted_connections do |t|
      t.references :user, :wanted_connection
    end
  end
end
