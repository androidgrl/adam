class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.references :airport, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
