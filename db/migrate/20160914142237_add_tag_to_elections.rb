class AddTagToElections < ActiveRecord::Migration[5.0]
  def change
    add_column :elections, :tag, :string
  end
end
