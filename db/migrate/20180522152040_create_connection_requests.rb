class CreateConnectionRequests < ActiveRecord::Migration[5.2]
    def change
        create_table :connection_requests do |t|
            t.integer :user_id
            t.integer :other_user_id
            t.string :state
            t.timestamps
        end
    end
end
