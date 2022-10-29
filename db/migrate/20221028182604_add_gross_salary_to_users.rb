class AddGrossSalaryToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :gross_salary, :decimal
  end
end
