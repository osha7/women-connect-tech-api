class AddAttributesToAvatar < ActiveRecord::Migration[6.0]
  def change
    add_column :avatars, :image, :string
    add_column :avatars, :video, :string
    add_column :avatars, :user_id, :integer
  end
end
