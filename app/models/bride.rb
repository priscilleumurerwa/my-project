class Bride < ApplicationRecord
  has_one :groom
  validates :name, :email, :birth_date, :gender, :country, :district, :sector, :cell, :phone, presence: true
end
