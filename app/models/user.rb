class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role

  validates_presence_of :first_name, :last_name, :date_of_birth, :phone_number, :address, :gender, :is_profile_complete
end
