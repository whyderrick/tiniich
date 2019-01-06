class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :text, null: false
      t.string :field_type, null: false
      t.references :reflection, foreign_key: true, null: false

      t.timestamps
    end
  end
end
