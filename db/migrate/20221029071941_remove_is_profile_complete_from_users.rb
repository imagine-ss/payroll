class RemoveIsProfileCompleteFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :is_profile_complete, :boolean
  end
end
