class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :job_name, null: false

      t.timestamps
    end
    add_index :jobs, :job_name, unique: true
  end
end
