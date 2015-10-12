class CreateShiftDetails < ActiveRecord::Migration
  def change
    create_table :shift_details do |t|
      t.string :shift_name
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
