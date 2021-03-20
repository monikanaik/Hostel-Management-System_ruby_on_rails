class CreateFees < ActiveRecord::Migration[6.1]
  def change
    create_table :fees do |t|
      t.integer :deposite_fee
      t.integer :total_fee
      t.date :deposit_date
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
