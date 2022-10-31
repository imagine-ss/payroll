class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role

  has_many :transactions

  has_many :vacations

  validates_presence_of :email, :first_name, :last_name, :job_title, :gross_salary, :date_of_birth, :phone_number, :address, :gender, :password, :password_confirmation, :role_id

end
