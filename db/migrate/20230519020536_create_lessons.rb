class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons, null: false do |t|
      t.string :name, null: false
      t.datetime :time, null: false
      t.references :teacher, foreign_key: true
      t.string :category
      t.text :comment

      t.timestamps
    end
  end
end
