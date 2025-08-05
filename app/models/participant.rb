class Participant < ApplicationRecord
  belongs_to :region
  belongs_to :microregion
  has_one_attached :avatar
end
