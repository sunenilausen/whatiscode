class Project < ApplicationRecord
  has_and_belongs_to_many :showcases, -> { order(:released_at) }
end
