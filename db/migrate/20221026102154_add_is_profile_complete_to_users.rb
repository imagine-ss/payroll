class AddIsProfileCompleteToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_profile_complete, :boolean, default: false
  end
end
