class CreateButtons < ActiveRecord::Migration[5.2]
  def change
    create_table :buttons do |t|
      t.string :name

      t.timestamps
    end
    add_index :buttons, :name
  end
end
