class AddLocationIdToSession < ActiveRecord::Migration
  def change
    add_reference :sessions, :location, index: true, foreign_key: true
  end
end
