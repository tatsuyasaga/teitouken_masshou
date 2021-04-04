class CreateLands < ActiveRecord::Migration[6.0]
  def change
    create_table :lands do |t|
      t.integer :prefecture_id,           null: false
      t.string :city,                     null: false
      t.integer :number,                  null: false
      t.integer :branch_number
      t.integer :type_id,                 null: false
      t.text :acreage,                    null: false
      t.references :application_datum,    foreign_key: true
      t.timestamps
    end
  end
end
