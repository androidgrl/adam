class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :flight, index: true, foreign_key: true
      t.references :passenter, index: true, foreign_key: true
      t.references :seat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
