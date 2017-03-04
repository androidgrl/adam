class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id
      t.integer :arrival_airport_id
      t.datetime :departure_time
      t.datetime :arrival_time
      t.references :plane, index: true, foreign_key: true
      t.references :pilot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
