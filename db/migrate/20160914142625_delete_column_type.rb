class DeleteColumnType < ActiveRecord::Migration[5.0]
  def change
    remove_column :elections, :type
  end
end
