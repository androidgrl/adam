class CreatePilots < ActiveRecord::Migration
  def change
    create_table :pilots do |t|
      t.references :airport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
