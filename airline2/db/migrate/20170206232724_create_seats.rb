class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.references :plane, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
