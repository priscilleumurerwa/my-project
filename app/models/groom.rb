class Groom < ApplicationRecord
  belongs_to :bride
  has_one :family
end
