class CreateProfileInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_interests do |t|

      t.integer :user_id
      t.boolean :python, default: false
      t.boolean :rails, default: false
      t.boolean :react, default: false
      t.boolean :node_js, default: false
      t.boolean :sql, default: false
      t.boolean :blockchain, default: false
      t.boolean :data_scraping, default: false
      t.boolean :java, default: false
      t.boolean :javascript, default: false
      t.boolean :scss, default: false
      t.boolean :mentor, default: false
      t.boolean :mentee, default: false
      
      t.timestamps
    end
  end
end
