class CreateElections < ActiveRecord::Migration[5.0]
  def change
    create_table :elections do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.string :year, null: false

      t.timestamps
    end
  end
end
