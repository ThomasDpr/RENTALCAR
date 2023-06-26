class Car < ApplicationRecord

  has_many :bookings, dependent: :destroy
  # Une voiture peut avoir plusieurs bookings (dépendant d'elle)
  # Si on supprime une voiture, on supprime aussi ses bookings

  belongs_to :owner, class_name: "User"
  # Une voiture appartient à un owner (qui est un user)
  # Si on supprime un owner, on supprime aussi ses cars

  has_one_attached :photo
  # Une voiture a une photo (attachée)

  validates :brand, presence: true
  validates :description, presence: true, length: { maximum: 1000 }
  validates :color, presence: true
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :photo, presence: true
  # Une voiture doit avoir une marque, une description, une couleur, un prix par jour et une photo
end
