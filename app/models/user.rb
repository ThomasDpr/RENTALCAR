class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  # Un user peut avoir plusieurs bookings (dépendant de lui)
  # Si on supprime un user, on supprime aussi ses bookings

  has_many :cars, dependent: :destroy
  # Un user peut avoir plusieurs cars (dépendant de lui)
  # Si on supprime un user, on supprime aussi ses cars

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # Un user doit avoir un prénom, un nom et un email
end
