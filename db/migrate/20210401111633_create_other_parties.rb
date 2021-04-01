class CreateOtherParties < ActiveRecord::Migration[6.0]
  def change
    create_table :other_parties do |t|

      t.timestamps
    end
  end
end
