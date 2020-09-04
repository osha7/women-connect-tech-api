class ChangeUserGoalToHaveDefaultValue < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :goals, from: nil, to: "undefined"
  end
end
