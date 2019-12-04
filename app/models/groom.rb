class Groom < ApplicationRecord
  belongs_to :bride
  has_one :family
  validates :name, :email, :birth_date, :gender, :country, :district, :sector, :cell, :phone, presence: true
end
