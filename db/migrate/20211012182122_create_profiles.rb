class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :nick_name
      t.string :hash
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :level, null: false, foreign_key: true
      t.belongs_to :modifier, null: false, foreign_key: true

      t.timestamps
    end
    add_index :profiles, :nick_name, unique: true
    add_index :profiles, :hash, unique: true

  end
end
