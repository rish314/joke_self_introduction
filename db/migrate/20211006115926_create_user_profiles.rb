class CreateUserProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :user_profiles do |t|
      t.string :nick_name, null: false
      t.string :hash, null: false
      t.references :modifier, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true

      t.timestamps
    end
    add_index :user_profiles, :nick_name, unique: true
    add_index :user_profiles, :hash, unique: true
  end
end
