class CreateAdminModifiers < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_modifiers do |t|
      t.string :modifier_name, null: false

      t.timestamps
    end
    add_index :admin_modifiers, :modifier_name, unique: true
  end
end
