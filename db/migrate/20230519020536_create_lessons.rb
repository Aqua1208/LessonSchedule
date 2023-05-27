class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons, null: false do |t|
      t.string :lesson_name
      t.datetime :time
      t.string :teacher

      t.timestamps
    end
  end
end
