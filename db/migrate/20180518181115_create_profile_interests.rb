class CreateProfileInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_interests do |t|

      t.integer :user_id
      t.boolean :python
      t.boolean :rails
      t.boolean :react
      t.boolean :node_js
      t.boolean :sql
      t.boolean :blockchain
      t.boolean :data_scraping
      t.boolean :java
      t.boolean :javascript
      t.boolean :scss
      t.boolean :mentor
      t.boolean :mentee
      
      t.timestamps
    end
  end
end
