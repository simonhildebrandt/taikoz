class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :name
      t.text :synopsis
      t.text :tech_summary
      t.string :video_link
      t.string :tech_spec_link
      t.string :media_pack_link
      t.string :catagory
      t.string :slug
      t.string :images

      t.timestamps null: false
    end
  end
end
