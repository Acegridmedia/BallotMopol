class RenameDetailsToContent < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :details, :content
    rename_column :reports, :details, :content
  end
end
