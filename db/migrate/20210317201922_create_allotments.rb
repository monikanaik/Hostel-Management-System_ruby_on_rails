class CreateAllotments < ActiveRecord::Migration[6.1]
  def change
    create_table :allotments do |t|
      t.date :check_in_date
      t.date :check_out_date
      t.references :room, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
