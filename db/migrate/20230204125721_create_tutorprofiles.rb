class CreateTutorprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :tutorprofiles do |t|
      t.string :image
      t.string :phone
      t.bigint :tutor_id

      t.timestamps
    end
  end
end
