class AddLocationToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :venue, :string
    add_column :sessions, :street, :string
    add_column :sessions, :city, :string
    add_column :sessions, :state, :string
    add_column :sessions, :postcode, :string
    add_column :sessions, :country, :string
  end
end
