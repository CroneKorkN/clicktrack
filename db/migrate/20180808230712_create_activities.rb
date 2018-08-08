class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.datetime :finished_at
      t.references :button, foreign_key: true

      t.timestamps
    end
    add_index :activities, :finished_at
  end
end
