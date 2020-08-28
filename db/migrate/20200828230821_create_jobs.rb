class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :info
      t.integer :salary__starting_range
      t.integer :salary_highest_range
      t.string :contact_person
      t.string :email
      t.string :phone
      t.boolean :saved
      t.datetime :date

      t.timestamps
    end
  end
end
