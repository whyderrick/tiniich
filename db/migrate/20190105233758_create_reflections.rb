class CreateReflections < ActiveRecord::Migration[5.2]
  def change
    create_table :reflections do |t|
      t.references :user, foreign_key: true, null: false
      t.boolean :accepting_responses, default: true, null: false

      t.timestamps
    end
  end
end
