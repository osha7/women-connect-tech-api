class ChangeSalaryToString < ActiveRecord::Migration[6.0]
  def change
    change_column :jobs, :salary__starting_range, :string
    change_column :jobs, :salary_highest_range, :string
  end
end
