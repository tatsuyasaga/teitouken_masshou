class AddBranchDestinationIdToApplicationData < ActiveRecord::Migration[6.0]
  def change
    add_column :application_data, :branch_destination_id, :integer
  end
end
