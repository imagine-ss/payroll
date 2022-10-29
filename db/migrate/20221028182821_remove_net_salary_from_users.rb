class RemoveNetSalaryFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :net_salary, :decimal
  end
end
