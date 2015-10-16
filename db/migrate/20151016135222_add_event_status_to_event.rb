class AddEventStatusToEvent < ActiveRecord::Migration
  def change
    add_column :events, :event_status, :string
  end
end
