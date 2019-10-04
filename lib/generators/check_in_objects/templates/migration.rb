class CreateAttendances < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :attendances do |t|
      t.string :type
      t.references :entity, polymorphic: true, index: true
      t.references :attendance, foreign_key: true, index: true
      t.timestamps
    end
  end
end