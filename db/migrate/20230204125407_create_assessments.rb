class CreateAssessments < ActiveRecord::Migration[7.0]
  def change
    create_table :assessments do |t|
      t.references :tutor, null: false, foreign_key: true
      t.string :assessment_title

      t.timestamps
    end
  end
end
