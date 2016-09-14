class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :link, null: false
      t.references :report, index: true, foreign_key: true
      t.timestamps
    end
  end
end
