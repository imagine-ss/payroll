class RegistrationsController < Devise::RegistrationsController
  private
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :date_of_birth, :country, :phone_number, :address, :email, :password, :password_confirmation, :role_id)
    end

    def account_update_params
      params.require(:user).permit(:password, :password_confirmation, :current_password)
    end
end