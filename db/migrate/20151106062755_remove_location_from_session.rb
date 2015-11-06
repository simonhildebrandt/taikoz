class RemoveLocationFromSession < ActiveRecord::Migration
  def change
    remove_column :sessions, :venue, :string
    remove_column :sessions, :street, :string
    remove_column :sessions, :state, :string
    remove_column :sessions, :city, :string
    remove_column :sessions, :country, :string
    remove_column :sessions, :postcode, :string
  end
end
