class ChangeDateAndTimeToBeStringInJobs < ActiveRecord::Migration[5.2]
  def change
    change_column :jobs, :Date, :string
    change_column :jobs, :Time, :string
  end
end
