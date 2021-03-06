class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content, null: false
      t.references :report, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
    end
  end
end
