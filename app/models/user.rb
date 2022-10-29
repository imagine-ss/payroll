class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :role

  has_many :transactions

  has_many :vacations

  validates_presence_of :first_name, :last_name, :date_of_birth, :phone_number, :address, :gender

end
