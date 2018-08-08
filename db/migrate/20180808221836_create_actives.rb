class CreateActives < ActiveRecord::Migration[5.2]
  def change
    create_table :actives do |t|
      t.time :from
      t.time :to

      t.timestamps
    end
    add_index :actives, :from
    add_index :actives, :to
  end
end
