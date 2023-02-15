class CreateMcqs < ActiveRecord::Migration[7.0]
  def change
    create_table :mcqs do |t|
      t.string :question
      t.string :answers, array: true, default: []
      t.string :correct_answer
      t.references :assessment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
