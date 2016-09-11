class RenameColumnSummaryInReportToDetails < ActiveRecord::Migration[5.0]
  def change
    rename_column :reports, :summary, :details
  end
end
