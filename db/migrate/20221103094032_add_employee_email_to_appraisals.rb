class AddEmployeeEmailToAppraisals < ActiveRecord::Migration[7.0]
  def change
    add_column :appraisals, :employee_email, :string
  end
end
