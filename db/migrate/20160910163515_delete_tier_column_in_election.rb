class DeleteTierColumnInElection < ActiveRecord::Migration[5.0]
  def change
    remove_column :elections, :tier
  end
end
