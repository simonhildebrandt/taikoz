class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :venue
      t.string :street_add
      t.string :city
      t.string :state
      t.string :postcode
      t.string :country
      t.belongs_to :session, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
