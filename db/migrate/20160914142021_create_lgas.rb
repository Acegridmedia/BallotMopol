class CreateLgas < ActiveRecord::Migration[5.0]
  def change
    create_table :lgas do |t|
      t.string :name
      t.string :code
      t.references :state, index: true, foreign_key: true

      t.timestamps
    end
  end
end
