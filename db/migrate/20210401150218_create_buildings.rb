class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.integer :prefecture_id,            null: false
      t.references :application_datum,     foreign_key: true
      t.string :city,                      null: false
      t.integer :number,                   null: false
      t.integer :branch_number
      t.integer :use_id,                   null: false
      t.string :construction,              null: false
      t.string :floor_space,               null: false
      t.timestamps
    end
  end
end
