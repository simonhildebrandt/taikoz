class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :start_time
      t.time :duration
      t.string :booking_link
      t.text :session_details
      t.belongs_to :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
