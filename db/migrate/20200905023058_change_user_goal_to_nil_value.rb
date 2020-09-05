class ChangeUserGoalToNilValue < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :goals, from: "undefined", to: nil
  end
end
