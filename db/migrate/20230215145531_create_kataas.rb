class CreateKataas < ActiveRecord::Migration[7.0]
  def change
    create_table :kataas do |t|
      t.string :question
      t.string :instructions
      t.references :assessment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
