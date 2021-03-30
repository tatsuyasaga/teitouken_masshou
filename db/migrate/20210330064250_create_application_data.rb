class CreateApplicationData < ActiveRecord::Migration[6.0]
  def change
    create_table :application_data do |t|

      t.timestamps
    end
  end
end
