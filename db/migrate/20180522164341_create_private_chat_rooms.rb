class CreatePrivateChatRooms < ActiveRecord::Migration[5.2]
    def change
        create_table :private_chat_rooms do |t|
            t.references :user, foreign_key: true
            t.integer :other_user_id
            t.string :title

            t.timestamps
        end
    end
end
