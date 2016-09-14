class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :user, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true
      t.references :lga, index: true, foreign_key: true
      t.references :election, index: true, foreign_key: true

      t.string :content, null: false
      t.timestamps
    end
  end
end
