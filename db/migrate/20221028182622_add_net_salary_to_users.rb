class AddNetSalaryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :net_salary, :decimal
  end
end
