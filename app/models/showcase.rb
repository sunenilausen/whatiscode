class Showcase < ApplicationRecord
  has_and_belongs_to_many :projects, -> { order(:created_at) }
end
