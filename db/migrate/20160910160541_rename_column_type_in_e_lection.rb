class RenameColumnTypeInELection < ActiveRecord::Migration[5.0]
  def change
    rename_column :elections, :type, :tier
  end
end
