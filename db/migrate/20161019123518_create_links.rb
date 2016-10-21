class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :url
      t.string :key, index: true
      t.string :description
      t.integer :clicks, default: 0
      t.integer :fb_clicks, default: 0
      t.integer :insta_clicks, default: 0
      t.string :last_source
      t.timestamps
    end
  end
end
