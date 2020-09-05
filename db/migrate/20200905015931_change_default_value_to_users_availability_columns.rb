class ChangeDefaultValueToUsersAvailabilityColumns < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :open_to_connect, from: nil, to: false
    change_column_default :users, :open_to_mentor, from: nil, to: false
    change_column_default :users, :available_to_work, from: nil, to: false
  end
end
