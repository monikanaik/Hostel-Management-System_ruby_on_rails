class CreateStaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :father_name
      t.string :address
      t.integer :phone
      t.string :email
      t.references :block, null: false, foreign_key: true

      t.timestamps
    end
  end
end
