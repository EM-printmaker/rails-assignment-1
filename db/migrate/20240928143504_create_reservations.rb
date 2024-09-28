class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :all_day, null: false, default: false
      t.text :memo

      t.timestamps
    end
  end
end