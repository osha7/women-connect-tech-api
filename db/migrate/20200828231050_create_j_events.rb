class CreateJEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :info
      t.datetime :date
      t.datetime :time
      t.string :contact_person
      t.string :email
      t.string :link
      t.boolean :saved
      

      t.timestamps
    end
  end
end
