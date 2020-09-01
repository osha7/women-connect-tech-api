class ChangeNameStartingSalaryJobs < ActiveRecord::Migration[6.0]
  def change
    rename_column :jobs, :salary__starting_range, :salary_starting_range
  end
end
