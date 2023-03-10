class CreateInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :invites do |t|
      t.references :student, null: false, foreign_key: true
      t.references :tutor, null: false, foreign_key: true
      t.references :assessment, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
