class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
      :username,
      :first_name,
      :last_name,
      :address,
      :address_2,
      :city,
      :state,
      :zipcode,
      :phone_1,
      :birthday
    )
  end

  def account_update_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
      :current_password,
      :username,
      :first_name,
      :last_name,
      :address,
      :address_2,
      :city,
      :state,
      :zipcode,
      :phone_1,
      :birthday
    )
  end
end
