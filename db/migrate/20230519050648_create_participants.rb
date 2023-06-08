class CreateParticipants < ActiveRecord::Migration[7.0]
  def change
    create_table "participants", force: :cascade do |t|
      t.references :user, null: false, foreign_key: true
      t.references :lesson, null: false, foreign_key: true
      t.boolean :participation, default: false

      t.timestamps
    end
  end
end
