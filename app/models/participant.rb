class Participant < ApplicationRecord
  belongs_to :region
  belongs_to :microregion
  has_one_attached :avatar

  validates :microregion_id, microregion_belongs: true
end
