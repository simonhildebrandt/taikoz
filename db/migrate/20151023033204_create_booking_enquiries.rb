class CreateBookingEnquiries < ActiveRecord::Migration
  def change
    create_table :booking_enquiries do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :organisation_name
      t.datetime :event_date
      t.datetime :event_time
      t.string :event_location
      t.string :event_type
      t.text :performance_requirments
      t.integer :expected_attendance
      t.string :budget
      t.text :access_details
      t.text :parking_details

      t.timestamps null: false
    end
  end
end
