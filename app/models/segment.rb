class Segment < ApplicationRecord
  belongs_to :region
  enum :status, { inactive: 0, active: 1, ended: 2 }
end
