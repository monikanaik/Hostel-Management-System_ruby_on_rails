class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.integer :block_number
      t.integer :number_of_rooms
      t.integer :number_of_allotments

      t.timestamps
    end
  end
end
