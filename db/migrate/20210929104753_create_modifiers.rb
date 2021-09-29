class CreateModifiers < ActiveRecord::Migration[6.1]
  def change
    create_table :modifiers do |t|
      t.string :modifier_name, null: false

      t.timestamps
    end
    add_index :modifiers, :modifier_name, unique: true
  end
end
