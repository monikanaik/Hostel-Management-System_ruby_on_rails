class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.integer :room_no
      t.string :floor
      t.references :block_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
