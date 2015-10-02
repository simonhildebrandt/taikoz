class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :details
      t.string :image

      t.timestamps null: false

    end
  end
end
