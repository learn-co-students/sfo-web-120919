class Cow < ApplicationRecord
  belongs_to :farmer

  validates :name, presence: true
  validates :spots, presence: true
end
