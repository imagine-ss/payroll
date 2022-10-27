class RegistrationsController < Devise::RegistrationsController
  private
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role_id)
    end

    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :date_of_birth, :phone_number, :address, :gender, :password, :password_confirmation, :current_password).merge(is_profile_complete: true)
    end
end