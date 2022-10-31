class RegistrationsController < Devise::RegistrationsController
  private
    def sign_up_params
      params.require(:user).permit(:email, :first_name, :last_name, :date_of_birth, :phone_number, :address, :gender, :job_title, :gross_salary, :password, :password_confirmation).merge(role_id: 1, tax: 0.1)
    end

    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :date_of_birth, :phone_number, :address, :gender, :password, :password_confirmation, :job_title, :gross_salary, :current_password).merge(is_profile_complete: true)
    end
end