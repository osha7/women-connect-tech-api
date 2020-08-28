class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :type
      t.integer :user_id
      t.integer :job_id
      t.integer :event_id

      t.timestamps
    end
  end
end
