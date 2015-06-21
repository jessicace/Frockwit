class CreateWantedConnections < ActiveRecord::Migration
  def change
    create_table :wanted_connections do |t|
      t.text :name
      t.timestamps null: false
    end
  end
end
