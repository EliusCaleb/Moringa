class CreateStudentprofiles < ActiveRecord::Migration[7.0]
  def change
    create_table :studentprofiles do |t|
      t.string :image
      t.string :phone
      t.bigint :student_id

      t.timestamps
    end
  end
end
