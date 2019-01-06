class RenameReflectionsToFrames < ActiveRecord::Migration[5.2]
  def change
    rename_table :reflections, :frames
    rename_column :questions, :reflection_id, :frame_id
  end
end
