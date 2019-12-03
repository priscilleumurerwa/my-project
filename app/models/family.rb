class Family < ApplicationRecord
  belongs_to :groom
  has_many :comments, dependent: :destroy
end
