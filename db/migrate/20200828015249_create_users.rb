class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :goals
      t.string :resume_link
      t.string :avatar
      t.string :website
      t.string :contact
      t.string :linked_in
      t.string :twitter
      t.boolean :open_to_connect
      t.boolean :open_to_mentor
      t.boolean :available_to_work
      t.boolean :saved

      t.timestamps
    end
  end
end
