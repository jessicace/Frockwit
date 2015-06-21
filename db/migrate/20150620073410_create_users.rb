class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :contact_name          # Contact Name
      t.text :company_name          # Company Information for those that identify as a company. 
      t.text :description           # Used for Profile Information
      t.integer :age                # Used for Determining Useful Connections
      t.text :email                 # Used for Contacting
      t.text :mobile_number         # Used for Contacting
      t.text :website               # Used for Potential Influencer or for Company Information
      t.text :goals                 # Initially, Used for Creating Meaningful Connections
      t.text :requirements          # Initially, Used for Creating Meaningful Connections
      t.boolean :connect            # True/False Value for whether Users Want to be Connected 
      t.timestamps null: false
    end
  end
end
