class CreateApplicationData < ActiveRecord::Migration[6.0]
  def change
    create_table :application_data do |t|
      t.date :reason_date,       null: false
      t.string :reason,          null: false
      t.string :receipt_number,  null: false
      t.string :catalog_number
      t.date :application_date
      t.integer :destination_id, null: false
      t.integer :tax,            null: false
      t.references :user,        foreign_key: true
      t.timestamps
    end
  end
end
