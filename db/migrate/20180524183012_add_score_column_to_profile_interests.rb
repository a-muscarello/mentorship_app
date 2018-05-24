class AddScoreColumnToProfileInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :profile_interests, :score, :integer, default: false
  end
end
