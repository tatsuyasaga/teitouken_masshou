class CreateOtherParties < ActiveRecord::Migration[6.0]
  def change
    create_table :other_parties do |t|
      t.string :address,               null: false
      t.string :name,                  null: false
      t.string :ceo,                   null: false
      t.integer :number,               null: false
      t.references :application_datum, foreign_key: true
      t.timestamps
    end
  end
end
