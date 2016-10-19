class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :key
      t.string :description
      t.integer :clicks, default: 0
      t.integer :fb_clicks, default: 0
      t.integer :insta_clicks, default: 0
      t.timestamps
    end
  end
end
